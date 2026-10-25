s.boot;
s.waitForBoot({

    {
        var wind;
        var drone;
        var metal;
        var melody;
        var reverb;

        // Пустынный ветер

        wind = PinkNoise.ar(0.03);

        wind = BPF.ar(
            wind,
            LFNoise1.kr(0.03).range(200, 2000),
            0.2
        );

        // Низкий фундамент

        drone = Mix([

            SinOsc.ar(
                LFNoise1.kr(0.01).range(45, 55)
            ),

            SinOsc.ar(
                LFNoise1.kr(0.008).range(65, 75)
            ),

            Saw.ar(
                LFNoise1.kr(0.005).range(95, 105)
            ) * 0.3

        ]) * 0.12;

        drone = LPF.ar(drone, 800);

        // Металлические резонансы
        // вдохновлено гнауа-каркабами

        metal = Dust.ar(0.6);

        metal = Ringz.ar(
            metal,
            LFNoise1.kr(0.5).range(600, 4000),
            LFNoise1.kr(0.3).range(0.2, 2)
        );

        metal = metal * 0.04;

        // Модальная мелодия

        melody = SinOsc.ar(

            Select.kr(
                LFNoise0.kr(0.08).range(0,5),
                [
                    220,
                    247,
                    277,
                    330,
                    370,
                    440
                ]
            ),

            0,

            0.05

        );

        melody = LPF.ar(melody, 1000);

        melody = melody *
        LFNoise1.kr(0.05)
        .range(0.2, 1);

        reverb = FreeVerb.ar(
            drone + wind + metal + melody,
            0.85,
            0.95,
            0.4
        );

        Limiter.ar(reverb, 0.7) ! 2;

    }.play;

});

s.freeAll;
