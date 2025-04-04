/*====================================================================
 *
 * Copyright 1993, Silicon Graphics, Inc.
 * All Rights Reserved.
 *
 * This is UNPUBLISHED PROPRIETARY SOURCE CODE of Silicon Graphics,
 * Inc.; the contents of this file may not be disclosed to third
 * parties, copied or duplicated in any form, in whole or in part,
 * without the prior written permission of Silicon Graphics, Inc.
 *
 * RESTRICTED RIGHTS LEGEND:
 * Use, duplication or disclosure by the Government is subject to
 * restrictions as set forth in subdivision (c)(1)(ii) of the Rights
 * in Technical Data and Computer Software clause at DFARS
 * 252.227-7013, and/or in similar or successor clauses in the FAR,
 * DOD or NASA FAR Supplement. Unpublished - rights reserved under the
 * Copyright Laws of the United States.
 *====================================================================*/
#include "n_synthInternals.h"
#include <ultraerror.h>
#include <os_internal.h>

void n_alSynStartVoiceParams(N_ALVoice* v, ALWaveTable* w, f32 pitch, s16 vol, ALPan pan, u8 fxmix, ALMicroTime t) {
    ALStartParamAlt* update;

    if (v->pvoice) {
        /*
         * get new update struct from the free list
         */
        update = (ALStartParamAlt*)__n_allocParam();
        ALFailIf(update == 0, ERR_ALSYN_NO_UPDATE);

        if (fxmix > 127)
            fxmix = 127;

            /*
             * set offset and fxmix data
             */
#ifdef SAMPLE_ROUND
        update->delta = SAMPLE184(n_syn->paramSamples + v->pvoice->offset);
#else
        update->delta = n_syn->paramSamples + v->pvoice->offset;
#endif
        update->next = 0;
        update->type = AL_FILTER_START_VOICE_ALT;

        update->unity = v->unityPitch;
        update->pan = pan;
        update->volume = vol;
        update->fxMix = fxmix;
        update->pitch = pitch;
#ifdef SAMPLE_ROUND
        update->samples = SAMPLE184(_n_timeToSamples(t));
#else
        update->samples = _n_timeToSamples(t);
#endif
        update->wave = w;

        n_alEnvmixerParam(v->pvoice, AL_FILTER_ADD_UPDATE, update);
    }
}
