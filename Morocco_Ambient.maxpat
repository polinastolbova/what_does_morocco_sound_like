{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 2,
            "revision": 0,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 77.0, 1468.0, 705.0 ],
        "boxes": [
            {
                "box": {
                    "fontsize": 18.0,
                    "id": "title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 20.0, 720.0, 27.0 ],
                    "text": "ECHOFORMA / КАК ЗВУЧИТ МАРОККО? - generative soundscape"
                }
            },
            {
                "box": {
                    "id": "desc",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 50.0, 385.4700854700855, 20.0 ],
                    "text": "01 Desert Air · 02 Heat Shimmer · 03 Stone / Metal Resonance"
                }
            },
            {
                "box": {
                    "id": "noise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 120.0, 55.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "windfilter",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 110.0, 120.0, 115.0, 22.0 ],
                    "text": "lores~ 700 0.65"
                }
            },
            {
                "box": {
                    "id": "windgain",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 260.0, 120.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "windlevel",
                    "maxclass": "flonum",
                    "maximum": 0.5,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 260.0, 85.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "windlfo",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 110.0, 165.0, 85.0, 22.0 ],
                    "text": "cycle~ 0.027"
                }
            },
            {
                "box": {
                    "id": "windlfogain",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 215.0, 165.0, 70.0, 22.0 ],
                    "text": "*~ 0.28"
                }
            },
            {
                "box": {
                    "id": "windoffset",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 300.0, 165.0, 70.0, 22.0 ],
                    "text": "+~ 0.72"
                }
            },
            {
                "box": {
                    "id": "windmod",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 390.0, 120.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "airhead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 20.0, 209.99999999999997, 229.05982905982907, 23.0 ],
                    "text": "02 HEAT / DISTANT SHIMMER"
                }
            },
            {
                "box": {
                    "id": "airnoise",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 270.0, 55.0, 22.0 ],
                    "text": "noise~"
                }
            },
            {
                "box": {
                    "id": "airfilter",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 110.0, 270.0, 115.0, 22.0 ],
                    "text": "reson~ 1200 0.8"
                }
            },
            {
                "box": {
                    "id": "airgain",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 260.0, 270.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "airlevel",
                    "maxclass": "flonum",
                    "maximum": 0.2,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 260.0, 235.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "airlfo",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 110.0, 315.0, 85.0, 22.0 ],
                    "text": "cycle~ 0.013"
                }
            },
            {
                "box": {
                    "id": "airlfogain",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 215.0, 315.0, 70.0, 22.0 ],
                    "text": "*~ 0.35"
                }
            },
            {
                "box": {
                    "id": "airoffset",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 300.0, 315.0, 70.0, 22.0 ],
                    "text": "+~ 0.65"
                }
            },
            {
                "box": {
                    "id": "airmod",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 390.0, 270.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "fontsize": 14.0,
                    "id": "tonehead",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 363.2478632478633, 244.44444444444446, 23.0 ],
                    "text": "03 STONE / METAL RESONANCE"
                }
            },
            {
                "box": {
                    "id": "tone1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 430.0, 90.0, 22.0 ],
                    "text": "cycle~ 196"
                }
            },
            {
                "box": {
                    "id": "gain1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 155.0, 430.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "level1",
                    "maxclass": "flonum",
                    "maximum": 0.2,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 161.0, 394.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "tone2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 465.0, 90.0, 22.0 ],
                    "text": "cycle~ 293.66"
                }
            },
            {
                "box": {
                    "id": "gain2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 155.0, 465.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "level2",
                    "maxclass": "flonum",
                    "maximum": 0.2,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 155.0, 430.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "tone3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 30.0, 500.0, 90.0, 22.0 ],
                    "text": "cycle~ 392"
                }
            },
            {
                "box": {
                    "id": "gain3",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 155.0, 500.0, 40.0, 22.0 ],
                    "text": "*~"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "level3",
                    "maxclass": "flonum",
                    "maximum": 0.2,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 155.0, 465.0, 60.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "sumwa",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 520.0, 180.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "sumt1",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 520.0, 450.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "sumt2",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 585.0, 480.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "sumall",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 630.0, 330.0, 40.0, 22.0 ],
                    "text": "+~"
                }
            },
            {
                "box": {
                    "id": "master",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 690.0, 375.0, 75.0, 22.0 ],
                    "text": "*~ 0.35"
                }
            },
            {
                "box": {
                    "id": "clip",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 690.0, 415.0, 120.0, 22.0 ],
                    "text": "clip~ -0.9 0.9"
                }
            },
            {
                "box": {
                    "id": "dac",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 800.0, 470.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 11.0,
                    "id": "future",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 590.0, 800.0, 19.0 ],
                    "text": "Next: add selected field recordings from medinas, markets, water and traditional instruments."
                }
            },
            {
                "box": {
                    "fontsize": 10.0,
                    "id": "caution",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 25.0, 620.0, 800.0, 18.0 ],
                    "text": "Artistic synthesis sketch, not a documentary reconstruction. Start with low output volume."
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "airgain", 0 ],
                    "source": [ "airfilter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "airmod", 0 ],
                    "source": [ "airgain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "airgain", 1 ],
                    "source": [ "airlevel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "airlfogain", 0 ],
                    "source": [ "airlfo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "airoffset", 0 ],
                    "source": [ "airlfogain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumwa", 1 ],
                    "source": [ "airmod", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "airfilter", 0 ],
                    "source": [ "airnoise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "airmod", 1 ],
                    "source": [ "airoffset", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 1 ],
                    "order": 0,
                    "source": [ "clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "dac", 0 ],
                    "order": 1,
                    "source": [ "clip", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumt1", 0 ],
                    "source": [ "gain1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumt1", 1 ],
                    "source": [ "gain2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumt2", 1 ],
                    "source": [ "gain3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain1", 1 ],
                    "source": [ "level1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain2", 1 ],
                    "source": [ "level2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain3", 1 ],
                    "source": [ "level3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "clip", 0 ],
                    "source": [ "master", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windfilter", 0 ],
                    "source": [ "noise", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "master", 0 ],
                    "source": [ "sumall", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumt2", 0 ],
                    "source": [ "sumt1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumall", 1 ],
                    "source": [ "sumt2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumall", 0 ],
                    "source": [ "sumwa", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain1", 0 ],
                    "source": [ "tone1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain2", 0 ],
                    "source": [ "tone2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "gain3", 0 ],
                    "source": [ "tone3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windgain", 0 ],
                    "source": [ "windfilter", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windmod", 0 ],
                    "source": [ "windgain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windgain", 1 ],
                    "source": [ "windlevel", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windlfogain", 0 ],
                    "source": [ "windlfo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windoffset", 0 ],
                    "source": [ "windlfogain", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "sumwa", 0 ],
                    "source": [ "windmod", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "windmod", 1 ],
                    "source": [ "windoffset", 0 ]
                }
            }
        ],
        "autosave": 0
    }
}