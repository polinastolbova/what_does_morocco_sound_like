s.boot;
(
{
    var freqs;
    var sig;
    var wind;

    freqs = Array.fill(10, {

        LFNoise1.kr(
            Rand(0.001, 0.01)
        ).exprange(80, 1500)

    });

    sig = Mix.fill(10, { |i|

        Pan2.ar(

            SinOsc.ar(freqs[i]),

            LFNoise1.kr(
                Rand(0.001, 0.02)
            ),

            LFNoise1.kr(
                Rand(0.001, 0.02)
            ).range(0.01, 0.05)

        )

    });

    wind = PinkNoise.ar(0.02);

    wind = BPF.ar(
        wind,
        LFNoise1.kr(0.02).range(300, 3000),
        0.15
    );

    sig = sig + wind;

    sig = GVerb.ar(
        sig,
        roomsize: 180,
        revtime: 20,
        damping: 0.5
    );

    sig * 0.3;

}.play;
)

s.freeAll;
