/*
 * Copyright (C) 2021 The LineageOS Project
 *
 * SPDX-License-Identifier: Apache-2.0
 */

#include <libinit_dalvik_heap.h>
#include <libinit_variant.h>

#include "vendor_init.h"

static const variant_info_t global_info = {
    .prjname_value = "20831",

    .model = "DN2103",
    .name = "DN2103EEA",
    .build_fingerprint = "OnePlus/DN2103EEA/OP515BL1:11/RP1A.200720.011/1629889893415:user/release-keys",
    .hw = "20831",
};

static const variant_info_t india_info = {
    .prjname_value = "20827",

    .model = "CPH2401",
    .name = "CPH2401IND",
    .build_fingerprint = "OnePlus/CPH2401IND/OP515BL1:12/SP1A.210812.016/1656510465511/release-keys",
    .hw = "20827",
};

static const std::vector<variant_info_t> variants = {
    global_info,
    india_info,
};

void vendor_load_properties() {
    search_variant(variants);
    set_dalvik_heap();
}
