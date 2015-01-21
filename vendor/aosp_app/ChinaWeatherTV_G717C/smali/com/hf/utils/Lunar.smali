.class public Lcom/hf/utils/Lunar;
.super Ljava/lang/Object;
.source "Lunar.java"


# static fields
.field private static final lunarInfo:[I

.field private static final principleTermMap:[[C

.field private static final principleTermYear:[[C

.field private static final sFreg:Ljava/util/regex/Pattern;

.field private static final sectionalTermMap:[[C

.field private static final sectionalTermYear:[[C

.field private static final solarTermInfo:[I

.field private static utcCal:Ljava/util/GregorianCalendar;

.field private static final wFreg:Ljava/util/regex/Pattern;


# instance fields
.field public Animals:[Ljava/lang/String;

.field public DiZhi:[Ljava/lang/String;

.field public Tianan:[Ljava/lang/String;

.field private cyclicalDay:I

.field private cyclicalMonth:I

.field private cyclicalYear:I

.field private description:Ljava/lang/String;

.field private isFinded:Z

.field private isHoliday:Z

.field private isLFestival:Z

.field private isLeap:Z

.field private isLeapYear:Z

.field private isSFestival:Z

.field private lFestivalName:Ljava/lang/String;

.field private lFtv:[Ljava/lang/String;

.field private leapMonth:I

.field private lunarDay:I

.field private lunarMonth:I

.field public lunarString1:[Ljava/lang/String;

.field public lunarString2:[Ljava/lang/String;

.field private lunarYear:I

.field private mContext:Landroid/content/Context;

.field private mDayStr:Ljava/lang/String;

.field private mMonthStr:Ljava/lang/String;

.field private mYearStr:Ljava/lang/String;

.field private mYuanStr:Ljava/lang/String;

.field private maxDayInMonth:I

.field private sFestivalName:Ljava/lang/String;

.field private sFtv:[Ljava/lang/String;

.field private solar:Ljava/util/Calendar;

.field private solarDay:I

.field private solarMonth:I

.field public solarTerm:[Ljava/lang/String;

.field private solarYear:I

.field private wFtv:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x7

    const/16 v5, 0x8

    const/16 v4, 0x9

    const/16 v3, 0x1d

    .line 39
    const/16 v0, 0xc9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/hf/utils/Lunar;->lunarInfo:[I

    .line 66
    const/16 v0, 0x18

    new-array v0, v0, [I

    .line 67
    const/16 v1, 0x52d8

    aput v1, v0, v7

    const/4 v1, 0x2

    const v2, 0xa5e3

    aput v2, v0, v1

    const/4 v1, 0x3

    const v2, 0xf95c

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x14d59

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0x1a206

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x1f763

    aput v2, v0, v1

    const v1, 0x24d89

    aput v1, v0, v6

    .line 68
    const v1, 0x2a45d

    aput v1, v0, v5

    const v1, 0x2fbdf

    aput v1, v0, v4

    const/16 v1, 0xa

    const v2, 0x353d8

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x3ac35

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x404af

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x45d25

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x4b553

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x50d19

    aput v2, v0, v1

    const/16 v1, 0x10

    .line 69
    const v2, 0x56446

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0x5bac6

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x61087

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x6658a

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x6b9db

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x70d90

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x760cc

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x7b3b6

    aput v2, v0, v1

    .line 66
    sput-object v0, Lcom/hf/utils/Lunar;->solarTermInfo:[I

    .line 100
    const-string v0, "^(\\d{2})(\\d{2})([\\s\\*])(.+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/hf/utils/Lunar;->sFreg:Ljava/util/regex/Pattern;

    .line 101
    const-string v0, "^(\\d{2})(\\d)(\\d)([\\s\\*])(.+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/hf/utils/Lunar;->wFreg:Ljava/util/regex/Pattern;

    .line 397
    const/16 v0, 0xc

    new-array v0, v0, [[C

    const/4 v1, 0x0

    .line 398
    const/16 v2, 0x1c

    new-array v2, v2, [C

    fill-array-data v2, :array_1

    .line 401
    aput-object v2, v0, v1

    .line 402
    const/16 v1, 0x1c

    new-array v1, v1, [C

    fill-array-data v1, :array_2

    .line 405
    aput-object v1, v0, v7

    const/4 v1, 0x2

    .line 406
    new-array v2, v3, [C

    fill-array-data v2, :array_3

    .line 409
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 410
    new-array v2, v3, [C

    fill-array-data v2, :array_4

    .line 413
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 414
    new-array v2, v3, [C

    fill-array-data v2, :array_5

    .line 417
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 418
    const/16 v2, 0x21

    new-array v2, v2, [C

    fill-array-data v2, :array_6

    .line 422
    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 423
    new-array v2, v3, [C

    fill-array-data v2, :array_7

    .line 426
    aput-object v2, v0, v1

    .line 427
    const/16 v1, 0x21

    new-array v1, v1, [C

    fill-array-data v1, :array_8

    .line 431
    aput-object v1, v0, v6

    .line 432
    new-array v1, v3, [C

    fill-array-data v1, :array_9

    .line 435
    aput-object v1, v0, v5

    .line 436
    new-array v1, v3, [C

    fill-array-data v1, :array_a

    .line 439
    aput-object v1, v0, v4

    const/16 v1, 0xa

    .line 440
    new-array v2, v3, [C

    fill-array-data v2, :array_b

    .line 443
    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 444
    new-array v2, v3, [C

    fill-array-data v2, :array_c

    .line 447
    aput-object v2, v0, v1

    .line 397
    sput-object v0, Lcom/hf/utils/Lunar;->sectionalTermMap:[[C

    .line 450
    const/16 v0, 0xc

    new-array v0, v0, [[C

    const/4 v1, 0x0

    .line 451
    new-array v2, v4, [C

    fill-array-data v2, :array_d

    .line 452
    aput-object v2, v0, v1

    .line 453
    new-array v1, v4, [C

    fill-array-data v1, :array_e

    .line 454
    aput-object v1, v0, v7

    const/4 v1, 0x2

    .line 455
    new-array v2, v4, [C

    fill-array-data v2, :array_f

    .line 456
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 457
    new-array v2, v4, [C

    fill-array-data v2, :array_10

    .line 458
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 459
    new-array v2, v4, [C

    fill-array-data v2, :array_11

    .line 460
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 461
    new-array v2, v4, [C

    fill-array-data v2, :array_12

    .line 462
    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 463
    new-array v2, v4, [C

    fill-array-data v2, :array_13

    .line 464
    aput-object v2, v0, v1

    .line 465
    new-array v1, v4, [C

    fill-array-data v1, :array_14

    .line 466
    aput-object v1, v0, v6

    .line 467
    new-array v1, v4, [C

    fill-array-data v1, :array_15

    .line 468
    aput-object v1, v0, v5

    .line 469
    new-array v1, v4, [C

    fill-array-data v1, :array_16

    .line 470
    aput-object v1, v0, v4

    const/16 v1, 0xa

    .line 471
    new-array v2, v4, [C

    fill-array-data v2, :array_17

    .line 472
    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 473
    new-array v2, v4, [C

    fill-array-data v2, :array_18

    .line 474
    aput-object v2, v0, v1

    .line 450
    sput-object v0, Lcom/hf/utils/Lunar;->sectionalTermYear:[[C

    .line 477
    const/16 v0, 0xc

    new-array v0, v0, [[C

    const/4 v1, 0x0

    .line 478
    const/16 v2, 0x1c

    new-array v2, v2, [C

    fill-array-data v2, :array_19

    .line 481
    aput-object v2, v0, v1

    .line 482
    const/16 v1, 0x1c

    new-array v1, v1, [C

    fill-array-data v1, :array_1a

    .line 485
    aput-object v1, v0, v7

    const/4 v1, 0x2

    .line 486
    new-array v2, v3, [C

    fill-array-data v2, :array_1b

    .line 489
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 490
    new-array v2, v3, [C

    fill-array-data v2, :array_1c

    .line 493
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 494
    new-array v2, v3, [C

    fill-array-data v2, :array_1d

    .line 497
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 498
    new-array v2, v3, [C

    fill-array-data v2, :array_1e

    .line 501
    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 502
    new-array v2, v3, [C

    fill-array-data v2, :array_1f

    .line 505
    aput-object v2, v0, v1

    .line 506
    new-array v1, v3, [C

    fill-array-data v1, :array_20

    .line 509
    aput-object v1, v0, v6

    .line 510
    new-array v1, v3, [C

    fill-array-data v1, :array_21

    .line 513
    aput-object v1, v0, v5

    .line 514
    new-array v1, v3, [C

    fill-array-data v1, :array_22

    .line 517
    aput-object v1, v0, v4

    const/16 v1, 0xa

    .line 518
    new-array v2, v3, [C

    fill-array-data v2, :array_23

    .line 521
    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 522
    new-array v2, v3, [C

    fill-array-data v2, :array_24

    .line 525
    aput-object v2, v0, v1

    .line 477
    sput-object v0, Lcom/hf/utils/Lunar;->principleTermMap:[[C

    .line 528
    const/16 v0, 0xc

    new-array v0, v0, [[C

    const/4 v1, 0x0

    .line 529
    new-array v2, v6, [C

    fill-array-data v2, :array_25

    .line 530
    aput-object v2, v0, v1

    .line 531
    new-array v1, v6, [C

    fill-array-data v1, :array_26

    .line 532
    aput-object v1, v0, v7

    const/4 v1, 0x2

    .line 533
    new-array v2, v5, [C

    fill-array-data v2, :array_27

    .line 534
    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 535
    new-array v2, v5, [C

    fill-array-data v2, :array_28

    .line 536
    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 537
    new-array v2, v5, [C

    fill-array-data v2, :array_29

    .line 538
    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 539
    new-array v2, v5, [C

    fill-array-data v2, :array_2a

    .line 540
    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 541
    new-array v2, v5, [C

    fill-array-data v2, :array_2b

    .line 542
    aput-object v2, v0, v1

    .line 543
    new-array v1, v5, [C

    fill-array-data v1, :array_2c

    .line 544
    aput-object v1, v0, v6

    .line 545
    new-array v1, v5, [C

    fill-array-data v1, :array_2d

    .line 546
    aput-object v1, v0, v5

    .line 547
    new-array v1, v5, [C

    fill-array-data v1, :array_2e

    .line 548
    aput-object v1, v0, v4

    const/16 v1, 0xa

    .line 549
    new-array v2, v5, [C

    fill-array-data v2, :array_2f

    .line 550
    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 551
    new-array v2, v5, [C

    fill-array-data v2, :array_30

    .line 552
    aput-object v2, v0, v1

    .line 528
    sput-object v0, Lcom/hf/utils/Lunar;->principleTermYear:[[C

    .line 696
    const/4 v0, 0x0

    sput-object v0, Lcom/hf/utils/Lunar;->utcCal:Ljava/util/GregorianCalendar;

    return-void

    .line 39
    :array_0
    .array-data 0x4
        0xd8t 0x4bt 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0xd5t 0x54t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t
        0x54t 0x55t 0x0t 0x0t
        0xaft 0x56t 0x0t 0x0t
        0xd0t 0x9at 0x0t 0x0t
        0xd2t 0x55t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t
        0xb6t 0xa5t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t
        0x95t 0xd2t 0x0t 0x0t
        0x4ft 0xb5t 0x0t 0x0t
        0xa0t 0xd6t 0x0t 0x0t
        0xa2t 0xadt 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t
        0x77t 0x49t 0x0t 0x0t
        0x7ft 0x49t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0xb5t 0xb4t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t
        0x54t 0xabt 0x0t 0x0t
        0x6ft 0x2bt 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t
        0xf2t 0x52t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0x66t 0x65t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t
        0x95t 0x6at 0x0t 0x0t
        0xdft 0x5at 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t
        0xe3t 0x86t 0x0t 0x0t
        0xeft 0x92t 0x0t 0x0t
        0xd7t 0xc8t 0x0t 0x0t
        0x5ft 0xc9t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0xa6t 0xd8t 0x0t 0x0t
        0x5ft 0xb5t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xb4t 0xa5t 0x0t 0x0t
        0xdft 0x25t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t
        0xb2t 0xd2t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0x57t 0xb5t 0x0t 0x0t
        0xa0t 0x6ct 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t
        0x55t 0x53t 0x0t 0x0t
        0xaft 0x4dt 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t
        0x73t 0x45t 0x0t 0x0t
        0xbft 0x52t 0x0t 0x0t
        0xa8t 0xa9t 0x0t 0x0t
        0x50t 0xe9t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0xa6t 0xaet 0x0t 0x0t
        0x50t 0xabt 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t
        0xe4t 0xaat 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0x60t 0x52t 0x0t 0x0t
        0x63t 0xf2t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t
        0x57t 0x5bt 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t
        0xd5t 0x4dt 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0xd4t 0xd4t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t
        0x58t 0xd5t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t
        0xa0t 0xb6t 0x0t 0x0t
        0xa6t 0x95t 0x0t 0x0t
        0xbft 0x95t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t
        0x74t 0xa9t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0x7at 0xb2t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t
        0x46t 0xaft 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t
        0xf5t 0x4at 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t
        0xa3t 0x74t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t
        0x58t 0x6bt 0x0t 0x0t
        0xc0t 0x5at 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t
        0xd5t 0x96t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t
        0x54t 0xd9t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t
        0x52t 0x75t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xb7t 0xabt 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t
        0xb5t 0xcat 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t
        0xa4t 0xbat 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0xd9t 0x55t 0x0t 0x0t
        0xa0t 0x4bt 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t
        0x76t 0x51t 0x0t 0x0t
        0xbft 0x52t 0x0t 0x0t
        0x30t 0xa9t 0x0t 0x0t
        0x54t 0x79t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0x52t 0x5bt 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t
        0xe6t 0xa6t 0x0t 0x0t
        0xe0t 0xa4t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t
        0x65t 0xeat 0x0t 0x0t
        0x30t 0xd5t 0x0t 0x0t
        0xa0t 0x5at 0x0t 0x0t
        0xa3t 0x76t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t
        0xfbt 0x4at 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0xb6t 0xd0t 0x0t 0x0t
        0x5ft 0xd2t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t
        0x45t 0xddt 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t
        0xd0t 0x56t 0x0t 0x0t
        0xb2t 0x55t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t
        0x77t 0xa5t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0x50t 0xaat 0x0t 0x0t
        0x55t 0xb2t 0x0t 0x0t
        0x2ft 0x6dt 0x0t 0x0t
        0xa0t 0xadt 0x0t 0x0t
        0x63t 0x4bt 0x0t 0x0t
        0x7ft 0x93t 0x0t 0x0t
        0xf8t 0x49t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t
        0xa6t 0x68t 0x0t 0x0t
        0x5ft 0xeat 0x0t 0x0t
        0x20t 0x6bt 0x0t 0x0t
        0xc4t 0xa6t 0x0t 0x0t
        0xeft 0xaat 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t
        0xe3t 0xd2t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t
        0x57t 0xd5t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t
        0x55t 0x5dt 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd0t 0xa6t 0x0t 0x0t
        0xd4t 0x55t 0x0t 0x0t
        0xd0t 0x52t 0x0t 0x0t
        0xb8t 0xa9t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t
        0xa6t 0xb6t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0xa0t 0x55t 0x0t 0x0t
        0xa4t 0xabt 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t
        0x73t 0xb2t 0x0t 0x0t
        0x30t 0x69t 0x0t 0x0t
        0x37t 0x73t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0x55t 0x4bt 0x0t 0x0t
        0x6ft 0x4bt 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0xe4t 0x54t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t
        0x68t 0xe9t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t
        0xa0t 0xdat 0x0t 0x0t
        0xa6t 0x6at 0x0t 0x0t
        0xdft 0x56t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t
        0xd4t 0xa9t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0x50t 0xd1t 0x0t 0x0t
        0x52t 0xf2t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t
    .end array-data

    .line 398
    :array_1
    .array-data 0x2
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
    .end array-data

    .line 402
    :array_2
    .array-data 0x2
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
    .end array-data

    .line 406
    :array_3
    .array-data 0x2
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
    .end array-data

    .line 410
    nop

    :array_4
    .array-data 0x2
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x5t 0x0t
    .end array-data

    .line 414
    nop

    :array_5
    .array-data 0x2
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
    .end array-data

    .line 418
    nop

    :array_6
    .array-data 0x2
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x5t 0x0t
    .end array-data

    .line 423
    nop

    :array_7
    .array-data 0x2
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
    .end array-data

    .line 427
    nop

    :array_8
    .array-data 0x2
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
    .end array-data

    .line 432
    nop

    :array_9
    .array-data 0x2
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
    .end array-data

    .line 436
    nop

    :array_a
    .array-data 0x2
        0x9t 0x0t
        0x9t 0x0t
        0x9t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x9t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
    .end array-data

    .line 440
    nop

    :array_b
    .array-data 0x2
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
    .end array-data

    .line 444
    nop

    :array_c
    .array-data 0x2
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
    .end array-data

    .line 451
    nop

    :array_d
    .array-data 0x2
        0xdt 0x0t
        0x31t 0x0t
        0x55t 0x0t
        0x75t 0x0t
        0x95t 0x0t
        0xb9t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
        0xfat 0x0t
    .end array-data

    .line 453
    nop

    :array_e
    .array-data 0x2
        0xdt 0x0t
        0x2dt 0x0t
        0x51t 0x0t
        0x75t 0x0t
        0x95t 0x0t
        0xb9t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
        0xfat 0x0t
    .end array-data

    .line 455
    nop

    :array_f
    .array-data 0x2
        0xdt 0x0t
        0x30t 0x0t
        0x54t 0x0t
        0x70t 0x0t
        0x94t 0x0t
        0xb8t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    .line 457
    nop

    :array_10
    .array-data 0x2
        0xdt 0x0t
        0x2dt 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x8ct 0x0t
        0xact 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    .line 459
    nop

    :array_11
    .array-data 0x2
        0xdt 0x0t
        0x2ct 0x0t
        0x48t 0x0t
        0x68t 0x0t
        0x84t 0x0t
        0xa8t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    .line 461
    nop

    :array_12
    .array-data 0x2
        0x5t 0x0t
        0x21t 0x0t
        0x44t 0x0t
        0x60t 0x0t
        0x7ct 0x0t
        0x98t 0x0t
        0xbct 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 463
    nop

    :array_13
    .array-data 0x2
        0x1dt 0x0t
        0x39t 0x0t
        0x55t 0x0t
        0x78t 0x0t
        0x94t 0x0t
        0xb0t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    .line 465
    nop

    :array_14
    .array-data 0x2
        0xdt 0x0t
        0x30t 0x0t
        0x4ct 0x0t
        0x68t 0x0t
        0x84t 0x0t
        0xa8t 0x0t
        0xc4t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 467
    nop

    :array_15
    .array-data 0x2
        0x19t 0x0t
        0x3ct 0x0t
        0x58t 0x0t
        0x78t 0x0t
        0x94t 0x0t
        0xb8t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    .line 469
    nop

    :array_16
    .array-data 0x2
        0x10t 0x0t
        0x2ct 0x0t
        0x4ct 0x0t
        0x6ct 0x0t
        0x90t 0x0t
        0xact 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    .line 471
    nop

    :array_17
    .array-data 0x2
        0x1ct 0x0t
        0x3ct 0x0t
        0x5ct 0x0t
        0x7ct 0x0t
        0xa0t 0x0t
        0xc0t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    .line 473
    nop

    :array_18
    .array-data 0x2
        0x11t 0x0t
        0x35t 0x0t
        0x55t 0x0t
        0x7ct 0x0t
        0x9ct 0x0t
        0xbct 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xfat 0x0t
    .end array-data

    .line 478
    nop

    :array_19
    .array-data 0x2
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x14t 0x0t
    .end array-data

    .line 482
    :array_1a
    .array-data 0x2
        0x14t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x12t 0x0t
        0x12t 0x0t
    .end array-data

    .line 486
    :array_1b
    .array-data 0x2
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
    .end array-data

    .line 490
    nop

    :array_1c
    .array-data 0x2
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x13t 0x0t
        0x14t 0x0t
        0x14t 0x0t
    .end array-data

    .line 494
    nop

    :array_1d
    .array-data 0x2
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
    .end array-data

    .line 498
    nop

    :array_1e
    .array-data 0x2
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x14t 0x0t
        0x14t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
    .end array-data

    .line 502
    nop

    :array_1f
    .array-data 0x2
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
    .end array-data

    .line 506
    nop

    :array_20
    .array-data 0x2
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
    .end array-data

    .line 510
    nop

    :array_21
    .array-data 0x2
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
    .end array-data

    .line 514
    nop

    :array_22
    .array-data 0x2
        0x18t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
    .end array-data

    .line 518
    nop

    :array_23
    .array-data 0x2
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
    .end array-data

    .line 522
    nop

    :array_24
    .array-data 0x2
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x15t 0x0t
        0x16t 0x0t
    .end array-data

    .line 529
    nop

    :array_25
    .array-data 0x2
        0xdt 0x0t
        0x2dt 0x0t
        0x51t 0x0t
        0x71t 0x0t
        0x95t 0x0t
        0xb9t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 531
    nop

    :array_26
    .array-data 0x2
        0x15t 0x0t
        0x39t 0x0t
        0x5dt 0x0t
        0x7dt 0x0t
        0xa1t 0x0t
        0xc1t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 533
    nop

    :array_27
    .array-data 0x2
        0x15t 0x0t
        0x38t 0x0t
        0x58t 0x0t
        0x78t 0x0t
        0x98t 0x0t
        0xbct 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 535
    :array_28
    .array-data 0x2
        0x15t 0x0t
        0x31t 0x0t
        0x51t 0x0t
        0x74t 0x0t
        0x90t 0x0t
        0xb0t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 537
    :array_29
    .array-data 0x2
        0x11t 0x0t
        0x31t 0x0t
        0x4dt 0x0t
        0x70t 0x0t
        0x8ct 0x0t
        0xa8t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 539
    :array_2a
    .array-data 0x2
        0x1ct 0x0t
        0x3ct 0x0t
        0x58t 0x0t
        0x74t 0x0t
        0x94t 0x0t
        0xb4t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 541
    :array_2b
    .array-data 0x2
        0x19t 0x0t
        0x35t 0x0t
        0x54t 0x0t
        0x70t 0x0t
        0x90t 0x0t
        0xact 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 543
    :array_2c
    .array-data 0x2
        0x1dt 0x0t
        0x39t 0x0t
        0x59t 0x0t
        0x78t 0x0t
        0x94t 0x0t
        0xb4t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 545
    :array_2d
    .array-data 0x2
        0x11t 0x0t
        0x2dt 0x0t
        0x49t 0x0t
        0x6ct 0x0t
        0x8ct 0x0t
        0xa8t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 547
    :array_2e
    .array-data 0x2
        0x1ct 0x0t
        0x3ct 0x0t
        0x5ct 0x0t
        0x7ct 0x0t
        0xa0t 0x0t
        0xc0t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 549
    :array_2f
    .array-data 0x2
        0x10t 0x0t
        0x2ct 0x0t
        0x50t 0x0t
        0x70t 0x0t
        0x94t 0x0t
        0xb4t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data

    .line 551
    :array_30
    .array-data 0x2
        0x11t 0x0t
        0x35t 0x0t
        0x58t 0x0t
        0x78t 0x0t
        0x9ct 0x0t
        0xbct 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/util/Calendar;Landroid/content/Context;)V
    .locals 3
    .parameter "canlendar"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput-boolean v2, p0, Lcom/hf/utils/Lunar;->isFinded:Z

    .line 609
    iput-boolean v2, p0, Lcom/hf/utils/Lunar;->isSFestival:Z

    .line 610
    iput-boolean v2, p0, Lcom/hf/utils/Lunar;->isLFestival:Z

    .line 611
    const-string v1, ""

    iput-object v1, p0, Lcom/hf/utils/Lunar;->sFestivalName:Ljava/lang/String;

    .line 612
    const-string v1, ""

    iput-object v1, p0, Lcom/hf/utils/Lunar;->lFestivalName:Ljava/lang/String;

    .line 613
    const-string v1, ""

    iput-object v1, p0, Lcom/hf/utils/Lunar;->description:Ljava/lang/String;

    .line 614
    iput-boolean v2, p0, Lcom/hf/utils/Lunar;->isHoliday:Z

    .line 743
    iput v2, p0, Lcom/hf/utils/Lunar;->cyclicalYear:I

    .line 744
    iput v2, p0, Lcom/hf/utils/Lunar;->cyclicalMonth:I

    .line 745
    iput v2, p0, Lcom/hf/utils/Lunar;->cyclicalDay:I

    .line 746
    const/16 v1, 0x1d

    iput v1, p0, Lcom/hf/utils/Lunar;->maxDayInMonth:I

    .line 73
    iput-object p2, p0, Lcom/hf/utils/Lunar;->mContext:Landroid/content/Context;

    .line 74
    iget-object v1, p0, Lcom/hf/utils/Lunar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 75
    .local v0, resource:Landroid/content/res/Resources;
    const v1, 0x7f070047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->Tianan:[Ljava/lang/String;

    .line 76
    const v1, 0x7f070048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->DiZhi:[Ljava/lang/String;

    .line 77
    const v1, 0x7f070049

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->Animals:[Ljava/lang/String;

    .line 78
    const v1, 0x7f07004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->solarTerm:[Ljava/lang/String;

    .line 79
    const v1, 0x7f07004b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->lunarString1:[Ljava/lang/String;

    .line 80
    const v1, 0x7f07004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->lunarString2:[Ljava/lang/String;

    .line 81
    const v1, 0x7f07004d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->sFtv:[Ljava/lang/String;

    .line 82
    const v1, 0x7f07004e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->lFtv:[Ljava/lang/String;

    .line 83
    const v1, 0x7f07004f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->wFtv:[Ljava/lang/String;

    .line 84
    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->mYearStr:Ljava/lang/String;

    .line 85
    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->mMonthStr:Ljava/lang/String;

    .line 86
    const v1, 0x7f080144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->mDayStr:Ljava/lang/String;

    .line 87
    const v1, 0x7f080145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/hf/utils/Lunar;->mYuanStr:Ljava/lang/String;

    .line 89
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, p1, v1, v2}, Lcom/hf/utils/Lunar;->init(Ljava/util/Calendar;J)V

    .line 94
    return-void
.end method

.method public static declared-synchronized UTC(IIIIII)J
    .locals 9
    .parameter "y"
    .parameter "m"
    .parameter "d"
    .parameter "h"
    .parameter "min"
    .parameter "sec"

    .prologue
    .line 713
    const-class v7, Lcom/hf/utils/Lunar;

    monitor-enter v7

    :try_start_0
    invoke-static {}, Lcom/hf/utils/Lunar;->makeUTCCalendar()V

    .line 714
    sget-object v8, Lcom/hf/utils/Lunar;->utcCal:Ljava/util/GregorianCalendar;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 715
    :try_start_1
    sget-object v0, Lcom/hf/utils/Lunar;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 716
    sget-object v0, Lcom/hf/utils/Lunar;->utcCal:Ljava/util/GregorianCalendar;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 717
    sget-object v0, Lcom/hf/utils/Lunar;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    return-wide v0

    .line 714
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 713
    :catchall_1
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private countLunarDays(IIIZ)I
    .locals 3
    .parameter "lMonth"
    .parameter "toMonth"
    .parameter "toDay"
    .parameter "isLeap"

    .prologue
    const/4 v2, 0x0

    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, count:I
    if-ne p1, p2, :cond_1

    .line 302
    move v0, p3

    .line 328
    :cond_0
    :goto_0
    return v0

    .line 303
    :cond_1
    if-ge p1, p2, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 305
    iget v1, p0, Lcom/hf/utils/Lunar;->leapMonth:I

    if-ge p1, v1, :cond_2

    .line 306
    iget v1, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    invoke-static {v1, p1}, Lcom/hf/utils/Lunar;->getLunarMonthDays(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/hf/utils/Lunar;->countLunarDays(IIIZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 308
    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/hf/utils/Lunar;->leapMonth:I

    if-ne p1, v1, :cond_4

    .line 309
    if-eqz p4, :cond_3

    .line 310
    iget v1, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    invoke-static {v1}, Lcom/hf/utils/Lunar;->getLunarLeapDays(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/hf/utils/Lunar;->countLunarDays(IIIZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 312
    goto :goto_0

    .line 313
    :cond_3
    iget v1, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    invoke-static {v1, p1}, Lcom/hf/utils/Lunar;->getLunarMonthDays(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 314
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/hf/utils/Lunar;->countLunarDays(IIIZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    goto :goto_0

    .line 318
    :cond_4
    iget v1, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    invoke-static {v1, p1}, Lcom/hf/utils/Lunar;->getLunarMonthDays(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/hf/utils/Lunar;->countLunarDays(IIIZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 321
    goto :goto_0

    .line 322
    :cond_5
    iget v1, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    invoke-static {v1, p1}, Lcom/hf/utils/Lunar;->getLunarMonthDays(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 323
    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1, p2, p3, v2}, Lcom/hf/utils/Lunar;->countLunarDays(IIIZ)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private declared-synchronized findFestival()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 103
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getSolarMonth()I

    move-result v6

    .line 104
    .local v6, sM:I
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getSolarDay()I

    move-result v5

    .line 105
    .local v5, sD:I
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getLunarMonth()I

    move-result v3

    .line 106
    .local v3, lM:I
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getLunarDay()I

    move-result v2

    .line 107
    .local v2, lD:I
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getSolarYear()I

    move-result v7

    .line 109
    .local v7, sy:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v9, p0, Lcom/hf/utils/Lunar;->sFtv:[Ljava/lang/String;

    array-length v9, v9

    if-lt v1, v9, :cond_6

    .line 120
    :cond_0
    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v9, p0, Lcom/hf/utils/Lunar;->lFtv:[Ljava/lang/String;

    array-length v9, v9

    if-lt v1, v9, :cond_8

    .line 133
    :cond_1
    :goto_3
    const/4 v1, 0x0

    :goto_4
    iget-object v9, p0, Lcom/hf/utils/Lunar;->wFtv:[Ljava/lang/String;

    array-length v9, v9

    if-lt v1, v9, :cond_a

    .line 148
    const/16 v9, 0x752

    if-le v7, v9, :cond_2

    const/16 v9, 0x775

    if-ge v7, v9, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/hf/utils/Lunar;->mContext:Landroid/content/Context;

    const v11, 0x7f080146

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v9, v7, -0x752

    if-ne v9, v12, :cond_c

    iget-object v9, p0, Lcom/hf/utils/Lunar;->mYuanStr:Ljava/lang/String;

    :goto_5
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/utils/Lunar;->description:Ljava/lang/String;

    .line 149
    :cond_2
    const/16 v9, 0x774

    if-le v7, v9, :cond_3

    const/16 v9, 0x778

    if-ge v7, v9, :cond_3

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/hf/utils/Lunar;->mContext:Landroid/content/Context;

    const v11, 0x7f080147

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v9, v7, -0x774

    if-ne v9, v12, :cond_d

    iget-object v9, p0, Lcom/hf/utils/Lunar;->mYuanStr:Ljava/lang/String;

    :goto_6
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/utils/Lunar;->description:Ljava/lang/String;

    .line 150
    :cond_3
    const/16 v9, 0x777

    if-le v7, v9, :cond_4

    const/16 v9, 0x79e

    if-ge v7, v9, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/hf/utils/Lunar;->mContext:Landroid/content/Context;

    const v11, 0x7f080148

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v9, v7, -0x777

    if-ne v9, v12, :cond_e

    iget-object v9, p0, Lcom/hf/utils/Lunar;->mYuanStr:Ljava/lang/String;

    :goto_7
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/utils/Lunar;->description:Ljava/lang/String;

    .line 151
    :cond_4
    const/16 v9, 0x79d

    if-le v7, v9, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/hf/utils/Lunar;->mContext:Landroid/content/Context;

    const v11, 0x7f080149

    invoke-virtual {v9, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit16 v9, v7, -0x79d

    if-ne v9, v12, :cond_f

    iget-object v9, p0, Lcom/hf/utils/Lunar;->mYuanStr:Ljava/lang/String;

    :goto_8
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/utils/Lunar;->description:Ljava/lang/String;

    .line 152
    :cond_5
    iget-object v9, p0, Lcom/hf/utils/Lunar;->description:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, p0, Lcom/hf/utils/Lunar;->mYearStr:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/utils/Lunar;->description:Ljava/lang/String;

    .line 153
    iget-object v9, p0, Lcom/hf/utils/Lunar;->sFestivalName:Ljava/lang/String;

    const-string v10, "^\\|"

    const-string v11, ""

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/utils/Lunar;->sFestivalName:Ljava/lang/String;

    .line 154
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/hf/utils/Lunar;->isFinded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 110
    :cond_6
    :try_start_1
    sget-object v9, Lcom/hf/utils/Lunar;->sFreg:Ljava/util/regex/Pattern;

    iget-object v10, p0, Lcom/hf/utils/Lunar;->sFtv:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 111
    .local v4, m:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 112
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hf/utils/Lunar;->toInt(Ljava/lang/String;)I

    move-result v9

    if-ne v6, v9, :cond_7

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hf/utils/Lunar;->toInt(Ljava/lang/String;)I

    move-result v9

    if-ne v5, v9, :cond_7

    .line 113
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/hf/utils/Lunar;->isSFestival:Z

    .line 114
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/utils/Lunar;->sFestivalName:Ljava/lang/String;

    .line 115
    const-string v9, "*"

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/hf/utils/Lunar;->isHoliday:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 103
    .end local v1           #i:I
    .end local v2           #lD:I
    .end local v3           #lM:I
    .end local v4           #m:Ljava/util/regex/Matcher;
    .end local v5           #sD:I
    .end local v6           #sM:I
    .end local v7           #sy:I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 109
    .restart local v1       #i:I
    .restart local v2       #lD:I
    .restart local v3       #lM:I
    .restart local v4       #m:Ljava/util/regex/Matcher;
    .restart local v5       #sD:I
    .restart local v6       #sM:I
    .restart local v7       #sy:I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 121
    .end local v4           #m:Ljava/util/regex/Matcher;
    :cond_8
    :try_start_2
    sget-object v9, Lcom/hf/utils/Lunar;->sFreg:Ljava/util/regex/Pattern;

    iget-object v10, p0, Lcom/hf/utils/Lunar;->lFtv:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 122
    .restart local v4       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 123
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hf/utils/Lunar;->toInt(Ljava/lang/String;)I

    move-result v9

    if-ne v3, v9, :cond_9

    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hf/utils/Lunar;->toInt(Ljava/lang/String;)I

    move-result v9

    if-ne v2, v9, :cond_9

    .line 124
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/hf/utils/Lunar;->isLFestival:Z

    .line 125
    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/utils/Lunar;->lFestivalName:Ljava/lang/String;

    .line 126
    const-string v9, "*"

    const/4 v10, 0x3

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/hf/utils/Lunar;->isHoliday:Z

    goto/16 :goto_3

    .line 120
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 134
    .end local v4           #m:Ljava/util/regex/Matcher;
    :cond_a
    sget-object v9, Lcom/hf/utils/Lunar;->wFreg:Ljava/util/regex/Pattern;

    iget-object v10, p0, Lcom/hf/utils/Lunar;->wFtv:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 135
    .restart local v4       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 136
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getSolarMonth()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/hf/utils/Lunar;->toInt(Ljava/lang/String;)I

    move-result v10

    if-ne v9, v10, :cond_b

    .line 137
    const/4 v9, 0x2

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hf/utils/Lunar;->toInt(Ljava/lang/String;)I

    move-result v8

    .line 138
    .local v8, w:I
    const/4 v9, 0x3

    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hf/utils/Lunar;->toInt(Ljava/lang/String;)I

    move-result v0

    .line 139
    .local v0, d:I
    iget-object v9, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    const/4 v10, 0x4

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v9, v8, :cond_b

    .line 140
    iget-object v9, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    const/4 v10, 0x7

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    if-ne v9, v0, :cond_b

    .line 141
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/hf/utils/Lunar;->isSFestival:Z

    .line 142
    iget-object v9, p0, Lcom/hf/utils/Lunar;->sFestivalName:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "|"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x5

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/hf/utils/Lunar;->sFestivalName:Ljava/lang/String;

    .line 143
    const-string v9, "*"

    const/4 v10, 0x4

    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/hf/utils/Lunar;->isHoliday:Z

    .line 133
    .end local v0           #d:I
    .end local v8           #w:I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4

    .line 148
    .end local v4           #m:Ljava/util/regex/Matcher;
    :cond_c
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit16 v11, v7, -0x752

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 149
    :cond_d
    add-int/lit16 v9, v7, -0x774

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_6

    .line 150
    :cond_e
    add-int/lit16 v9, v7, -0x777

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_7

    .line 151
    :cond_f
    add-int/lit16 v9, v7, -0x79d

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v9

    goto/16 :goto_8
.end method

.method private getCyclicalData()V
    .locals 11

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 812
    iget-object v0, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/hf/utils/Lunar;->solarYear:I

    .line 813
    iget-object v0, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    .line 814
    iget-object v0, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Lcom/hf/utils/Lunar;->solarDay:I

    .line 816
    const/4 v8, 0x0

    .line 817
    .local v8, cyclicalYear:I
    const/4 v7, 0x0

    .line 818
    .local v7, cyclicalMonth:I
    const/4 v6, 0x0

    .line 821
    .local v6, cyclicalDay:I
    iget v0, p0, Lcom/hf/utils/Lunar;->solarYear:I

    invoke-static {v0, v4}, Lcom/hf/utils/Lunar;->getSolarTermDay(II)I

    move-result v10

    .line 823
    .local v10, term2:I
    iget v0, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    if-lt v0, v2, :cond_0

    iget v0, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/hf/utils/Lunar;->solarDay:I

    if-ge v0, v10, :cond_1

    .line 824
    :cond_0
    iget v0, p0, Lcom/hf/utils/Lunar;->solarYear:I

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v0, v0, 0x24

    add-int/lit8 v0, v0, -0x1

    rem-int/lit8 v8, v0, 0x3c

    .line 830
    :goto_0
    iget v0, p0, Lcom/hf/utils/Lunar;->solarYear:I

    iget v1, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/hf/utils/Lunar;->getSolarTermDay(II)I

    move-result v9

    .line 832
    .local v9, firstNode:I
    iget v0, p0, Lcom/hf/utils/Lunar;->solarDay:I

    if-ge v0, v9, :cond_2

    .line 833
    iget v0, p0, Lcom/hf/utils/Lunar;->solarYear:I

    add-int/lit16 v0, v0, -0x76c

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xc

    rem-int/lit8 v7, v0, 0x3c

    .line 840
    :goto_1
    iget v0, p0, Lcom/hf/utils/Lunar;->solarYear:I

    iget v1, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    iget v2, p0, Lcom/hf/utils/Lunar;->solarDay:I

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v5}, Lcom/hf/utils/Lunar;->UTC(IIIIII)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    const-wide/16 v2, 0x63df

    add-long/2addr v0, v2

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    long-to-int v0, v0

    rem-int/lit8 v6, v0, 0x3c

    .line 841
    iput v8, p0, Lcom/hf/utils/Lunar;->cyclicalYear:I

    .line 842
    iput v7, p0, Lcom/hf/utils/Lunar;->cyclicalMonth:I

    .line 843
    iput v6, p0, Lcom/hf/utils/Lunar;->cyclicalDay:I

    .line 844
    return-void

    .line 826
    .end local v9           #firstNode:I
    :cond_1
    iget v0, p0, Lcom/hf/utils/Lunar;->solarYear:I

    add-int/lit16 v0, v0, -0x76c

    add-int/lit8 v0, v0, 0x24

    rem-int/lit8 v8, v0, 0x3c

    goto :goto_0

    .line 835
    .restart local v9       #firstNode:I
    :cond_2
    iget v0, p0, Lcom/hf/utils/Lunar;->solarYear:I

    add-int/lit16 v0, v0, -0x76c

    mul-int/lit8 v0, v0, 0xc

    iget v1, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xd

    rem-int/lit8 v7, v0, 0x3c

    goto :goto_1
.end method

.method private getCyclicalString(I)Ljava/lang/String;
    .locals 3
    .parameter "cyclicalNumber"

    .prologue
    .line 1156
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/hf/utils/Lunar;->Tianan:[Ljava/lang/String;

    invoke-static {p1}, Lcom/hf/utils/Lunar;->getTianan(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hf/utils/Lunar;->DiZhi:[Ljava/lang/String;

    invoke-static {p1}, Lcom/hf/utils/Lunar;->getDeqi(I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDeqi(I)I
    .locals 1
    .parameter "cyclicalNumber"

    .prologue
    .line 1165
    rem-int/lit8 v0, p0, 0xc

    return v0
.end method

.method private getLunarDayString(I)Ljava/lang/String;
    .locals 8
    .parameter "lunarDay"

    .prologue
    const/16 v7, 0x1e

    const/4 v6, 0x1

    .line 1212
    if-lt p1, v6, :cond_0

    if-le p1, v7, :cond_1

    :cond_0
    const-string v4, ""

    .line 1221
    :goto_0
    return-object v4

    .line 1213
    :cond_1
    div-int/lit8 v2, p1, 0xa

    .line 1214
    .local v2, i1:I
    rem-int/lit8 v3, p1, 0xa

    .line 1215
    .local v3, i2:I
    iget-object v4, p0, Lcom/hf/utils/Lunar;->lunarString2:[Ljava/lang/String;

    aget-object v0, v4, v2

    .line 1216
    .local v0, c1:Ljava/lang/String;
    iget-object v4, p0, Lcom/hf/utils/Lunar;->lunarString1:[Ljava/lang/String;

    aget-object v1, v4, v3

    .line 1217
    .local v1, c2:Ljava/lang/String;
    const/16 v4, 0xb

    if-ge p1, v4, :cond_2

    iget-object v4, p0, Lcom/hf/utils/Lunar;->lunarString2:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v0, v4, v5

    .line 1218
    :cond_2
    const/16 v4, 0x14

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/hf/utils/Lunar;->lunarString1:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v0, v4, v5

    .line 1219
    :cond_3
    if-ne p1, v7, :cond_4

    iget-object v4, p0, Lcom/hf/utils/Lunar;->lunarString1:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v0, v4, v5

    .line 1220
    :cond_4
    if-nez v3, :cond_5

    iget-object v4, p0, Lcom/hf/utils/Lunar;->lunarString2:[Ljava/lang/String;

    aget-object v1, v4, v6

    .line 1221
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private getLunarFastivalDays(II)I
    .locals 9
    .parameter "fastivalMonth"
    .parameter "fastivalDay"

    .prologue
    .line 189
    const/4 v0, -0x1

    .line 190
    .local v0, days:I
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getLunarMonth()I

    move-result v4

    .line 191
    .local v4, lM:I
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getLunarDay()I

    move-result v3

    .line 192
    .local v3, lD:I
    sget-boolean v6, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v6, :cond_0

    .line 193
    const-string v6, "count"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lM = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; fastvielM = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    if-ge p1, v4, :cond_1

    move v1, v0

    .line 221
    .end local v0           #days:I
    .local v1, days:I
    :goto_0
    return v1

    .line 200
    .end local v1           #days:I
    .restart local v0       #days:I
    :cond_1
    if-ne v4, p1, :cond_3

    if-gt v3, p2, :cond_3

    .line 201
    sub-int v0, p2, v3

    :cond_2
    :goto_1
    move v1, v0

    .line 221
    .end local v0           #days:I
    .restart local v1       #days:I
    goto :goto_0

    .line 203
    .end local v1           #days:I
    .restart local v0       #days:I
    :cond_3
    if-ge v4, p1, :cond_6

    .line 205
    const/4 v5, 0x0

    .line 206
    .local v5, month:I
    const/4 v2, 0x0

    .line 207
    .local v2, isLeap:Z
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getMaxDayInMonth()I

    move-result v6

    sub-int v0, v6, v3

    .line 208
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->isLeap()Z

    move-result v6

    if-nez v6, :cond_4

    iget v6, p0, Lcom/hf/utils/Lunar;->leapMonth:I

    if-eq v4, v6, :cond_5

    .line 209
    :cond_4
    add-int/lit8 v5, v4, 0x1

    .line 210
    const/4 v2, 0x0

    .line 215
    :goto_2
    invoke-direct {p0, v5, p1, p2, v2}, Lcom/hf/utils/Lunar;->countLunarDays(IIIZ)I

    move-result v6

    add-int/2addr v0, v6

    .line 217
    goto :goto_1

    .line 212
    :cond_5
    move v5, v4

    .line 213
    const/4 v2, 0x1

    goto :goto_2

    .line 217
    .end local v2           #isLeap:Z
    .end local v5           #month:I
    :cond_6
    if-nez p2, :cond_2

    .line 218
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getMaxDayInMonth()I

    move-result v6

    sub-int v0, v6, v3

    goto :goto_1
.end method

.method private static getLunarLeapDays(I)I
    .locals 2
    .parameter "lunarYear"

    .prologue
    .line 641
    invoke-static {p0}, Lcom/hf/utils/Lunar;->getLunarLeapMonth(I)I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lcom/hf/utils/Lunar;->lunarInfo:[I

    add-int/lit16 v1, p0, -0x76b

    aget v0, v0, v1

    and-int/lit8 v0, v0, 0xf

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    .line 642
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 643
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getLunarLeapMonth(I)I
    .locals 3
    .parameter "lunarYear"

    .prologue
    .line 626
    sget-object v1, Lcom/hf/utils/Lunar;->lunarInfo:[I

    add-int/lit16 v2, p0, -0x76c

    aget v1, v1, v2

    and-int/lit8 v0, v1, 0xf

    .line 627
    .local v0, leapMonth:I
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 628
    :cond_0
    return v0
.end method

.method private static getLunarMonthDays(II)I
    .locals 3
    .parameter "lunarYear"
    .parameter "lunarMonth"

    .prologue
    .line 678
    sget-object v1, Lcom/hf/utils/Lunar;->lunarInfo:[I

    add-int/lit16 v2, p0, -0x76c

    aget v1, v1, v2

    const/high16 v2, 0x1

    shr-int/2addr v2, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/16 v0, 0x1e

    .line 680
    .local v0, daysInLunarMonth:I
    :goto_0
    return v0

    .line 679
    .end local v0           #daysInLunarMonth:I
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0
.end method

.method private getLunarMonthString(I)Ljava/lang/String;
    .locals 4
    .parameter "lunarMonth"

    .prologue
    const/4 v3, 0x1

    .line 1192
    const-string v0, ""

    .line 1193
    .local v0, lunarMonthString:Ljava/lang/String;
    if-ne p1, v3, :cond_1

    .line 1194
    iget-object v1, p0, Lcom/hf/utils/Lunar;->lunarString2:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v1, v2

    .line 1203
    :cond_0
    :goto_0
    return-object v0

    .line 1195
    :cond_1
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    .line 1196
    iget-object v1, p0, Lcom/hf/utils/Lunar;->lunarString2:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v0, v1, v2

    .line 1197
    goto :goto_0

    .line 1198
    :cond_2
    const/16 v1, 0x9

    if-le p1, v1, :cond_3

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hf/utils/Lunar;->lunarString2:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1200
    :cond_3
    rem-int/lit8 v1, p1, 0xa

    if-lez v1, :cond_0

    .line 1201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/hf/utils/Lunar;->lunarString1:[Ljava/lang/String;

    rem-int/lit8 v3, p1, 0xa

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getLunarYearDays(I)I
    .locals 4
    .parameter "lunarYear"

    .prologue
    .line 653
    const/16 v0, 0x15c

    .line 657
    .local v0, daysInLunarYear:I
    const v1, 0x8000

    .local v1, i:I
    :goto_0
    const/16 v2, 0x8

    if-gt v1, v2, :cond_0

    .line 662
    invoke-static {p0}, Lcom/hf/utils/Lunar;->getLunarLeapDays(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 664
    return v0

    .line 658
    :cond_0
    sget-object v2, Lcom/hf/utils/Lunar;->lunarInfo:[I

    add-int/lit16 v3, p0, -0x76c

    aget v2, v2, v3

    and-int/2addr v2, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 659
    :goto_1
    add-int/2addr v0, v2

    .line 657
    shr-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 659
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getLunarYearString(I)Ljava/lang/String;
    .locals 1
    .parameter "lunarYear"

    .prologue
    .line 1183
    add-int/lit16 v0, p1, -0x76c

    add-int/lit8 v0, v0, 0x24

    invoke-direct {p0, v0}, Lcom/hf/utils/Lunar;->getCyclicalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSolarFastivalDays(II)I
    .locals 7
    .parameter "fastivalMonth"
    .parameter "fastivalDay"

    .prologue
    const/4 v6, 0x6

    .line 164
    const/4 v2, -0x1

    .line 165
    .local v2, days:I
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getSolarMonth()I

    move-result v3

    .line 166
    .local v3, sM:I
    if-gt v3, p1, :cond_0

    .line 167
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 169
    .local v0, calendar:Ljava/util/Calendar;
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getSolarYear()I

    move-result v4

    add-int/lit8 v5, p1, -0x1

    invoke-virtual {v0, v4, v5, p2}, Ljava/util/Calendar;->set(III)V

    .line 171
    iget-object v4, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    invoke-virtual {v4, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v1

    .line 172
    .local v1, compare:I
    if-gtz v1, :cond_0

    .line 173
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iget-object v5, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    sub-int v2, v4, v5

    .line 174
    const/16 v4, 0xc

    if-ne p1, v4, :cond_0

    const/16 v4, 0x1f

    if-ne p2, v4, :cond_0

    .line 175
    add-int/lit8 v2, v2, 0x1

    .line 179
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v1           #compare:I
    :cond_0
    return v2
.end method

.method private static getSolarTermDay(II)I
    .locals 10
    .parameter "solarYear"
    .parameter "index"

    .prologue
    const/4 v1, 0x0

    .line 728
    const-wide v2, 0x758f07a16L

    add-int/lit16 v0, p0, -0x76c

    int-to-long v4, v0

    mul-long/2addr v2, v4

    .line 729
    sget-object v0, Lcom/hf/utils/Lunar;->solarTermInfo:[I

    aget v0, v0, p1

    int-to-long v4, v0

    const-wide/32 v8, 0xea60

    mul-long/2addr v4, v8

    .line 728
    add-long v6, v2, v4

    .line 730
    .local v6, l:J
    const/16 v0, 0x76c

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x5

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/hf/utils/Lunar;->UTC(IIIIII)J

    move-result-wide v0

    add-long/2addr v6, v0

    .line 731
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/hf/utils/Lunar;->getUTCDay(Ljava/util/Date;)I

    move-result v0

    return v0
.end method

.method private static getTianan(I)I
    .locals 1
    .parameter "cyclicalNumber"

    .prologue
    .line 1174
    rem-int/lit8 v0, p0, 0xa

    return v0
.end method

.method public static declared-synchronized getUTCDay(Ljava/util/Date;)I
    .locals 5
    .parameter "date"

    .prologue
    .line 689
    const-class v1, Lcom/hf/utils/Lunar;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/hf/utils/Lunar;->makeUTCCalendar()V

    .line 690
    sget-object v2, Lcom/hf/utils/Lunar;->utcCal:Ljava/util/GregorianCalendar;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 691
    :try_start_1
    sget-object v0, Lcom/hf/utils/Lunar;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->clear()V

    .line 692
    sget-object v0, Lcom/hf/utils/Lunar;->utcCal:Ljava/util/GregorianCalendar;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 693
    sget-object v0, Lcom/hf/utils/Lunar;->utcCal:Ljava/util/GregorianCalendar;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return v0

    .line 690
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 689
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init(Ljava/util/Calendar;J)V
    .locals 12
    .parameter "calendar"
    .parameter "TimeInMillis"

    .prologue
    .line 750
    iput-object p1, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    .line 751
    iget-object v8, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    invoke-virtual {v8, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 752
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v8, 0x76c

    const/4 v9, 0x0

    const/16 v10, 0x1f

    invoke-direct {v0, v8, v9, v10}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 753
    .local v0, baseDate:Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long v8, p2, v8

    const-wide/32 v10, 0x5265c00

    div-long v6, v8, v10

    .line 755
    .local v6, offset:J
    const/16 v8, 0x76c

    iput v8, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    .line 756
    iget v8, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    invoke-static {v8}, Lcom/hf/utils/Lunar;->getLunarYearDays(I)I

    move-result v2

    .line 757
    .local v2, daysInLunarYear:I
    :goto_0
    iget v8, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    const/16 v9, 0x834

    if-ge v8, v9, :cond_0

    int-to-long v8, v2

    cmp-long v8, v6, v8

    if-gez v8, :cond_2

    .line 764
    :cond_0
    const/4 v5, 0x1

    .line 766
    .local v5, lunarMonth:I
    iget v8, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    invoke-static {v8}, Lcom/hf/utils/Lunar;->getLunarLeapMonth(I)I

    move-result v8

    iput v8, p0, Lcom/hf/utils/Lunar;->leapMonth:I

    .line 768
    iget v8, p0, Lcom/hf/utils/Lunar;->leapMonth:I

    if-lez v8, :cond_3

    const/4 v8, 0x1

    :goto_1
    iput-boolean v8, p0, Lcom/hf/utils/Lunar;->isLeapYear:Z

    .line 770
    const/4 v4, 0x0

    .line 771
    .local v4, leapDec:Z
    const/4 v3, 0x0

    .line 772
    .local v3, isLeap:Z
    const/4 v1, 0x0

    .line 773
    .local v1, daysInLunarMonth:I
    :goto_2
    const/16 v8, 0xd

    if-ge v5, v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_4

    .line 796
    :cond_1
    iput v1, p0, Lcom/hf/utils/Lunar;->maxDayInMonth:I

    .line 798
    iput v5, p0, Lcom/hf/utils/Lunar;->lunarMonth:I

    .line 800
    iget v8, p0, Lcom/hf/utils/Lunar;->leapMonth:I

    if-ne v5, v8, :cond_7

    if-eqz v3, :cond_7

    const/4 v8, 0x1

    :goto_3
    iput-boolean v8, p0, Lcom/hf/utils/Lunar;->isLeap:Z

    .line 802
    long-to-int v8, v6

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/hf/utils/Lunar;->lunarDay:I

    .line 804
    invoke-direct {p0}, Lcom/hf/utils/Lunar;->getCyclicalData()V

    .line 805
    return-void

    .line 758
    .end local v1           #daysInLunarMonth:I
    .end local v3           #isLeap:Z
    .end local v4           #leapDec:Z
    .end local v5           #lunarMonth:I
    :cond_2
    int-to-long v8, v2

    sub-long/2addr v6, v8

    .line 759
    iget v8, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    invoke-static {v8}, Lcom/hf/utils/Lunar;->getLunarYearDays(I)I

    move-result v2

    goto :goto_0

    .line 768
    .restart local v5       #lunarMonth:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 774
    .restart local v1       #daysInLunarMonth:I
    .restart local v3       #isLeap:Z
    .restart local v4       #leapDec:Z
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 776
    iget v8, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    invoke-static {v8}, Lcom/hf/utils/Lunar;->getLunarLeapDays(I)I

    move-result v1

    .line 777
    const/4 v4, 0x0

    .line 782
    :goto_4
    int-to-long v8, v1

    cmp-long v8, v6, v8

    if-ltz v8, :cond_1

    .line 785
    int-to-long v8, v1

    sub-long/2addr v6, v8

    .line 787
    iget v8, p0, Lcom/hf/utils/Lunar;->leapMonth:I

    if-ne v8, v5, :cond_6

    if-nez v3, :cond_6

    .line 789
    const/4 v4, 0x1

    .line 790
    const/4 v3, 0x1

    .line 791
    goto :goto_2

    .line 780
    :cond_5
    iget v8, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    invoke-static {v8, v5}, Lcom/hf/utils/Lunar;->getLunarMonthDays(II)I

    move-result v1

    goto :goto_4

    .line 793
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 800
    :cond_7
    const/4 v8, 0x0

    goto :goto_3
.end method

.method private static declared-synchronized makeUTCCalendar()V
    .locals 3

    .prologue
    .line 698
    const-class v1, Lcom/hf/utils/Lunar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/hf/utils/Lunar;->utcCal:Ljava/util/GregorianCalendar;

    if-nez v0, :cond_0

    .line 699
    new-instance v0, Ljava/util/GregorianCalendar;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    sput-object v0, Lcom/hf/utils/Lunar;->utcCal:Ljava/util/GregorianCalendar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    :cond_0
    monitor-exit v1

    return-void

    .line 698
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static principleTerm(II)I
    .locals 6
    .parameter "y"
    .parameter "m"

    .prologue
    .line 590
    add-int/lit8 p1, p1, 0x1

    .line 591
    const/16 v3, 0x76d

    if-lt p0, v3, :cond_0

    const/16 v3, 0x834

    if-le p0, v3, :cond_2

    .line 592
    :cond_0
    const/4 v2, 0x0

    .line 604
    :cond_1
    :goto_0
    return v2

    .line 594
    :cond_2
    const/4 v0, 0x0

    .line 596
    .local v0, index:I
    add-int/lit16 v3, p0, -0x76d

    add-int/lit8 v1, v3, 0x1

    .local v1, ry:I
    :goto_1
    sget-object v3, Lcom/hf/utils/Lunar;->principleTermYear:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aget-char v3, v3, v0

    if-ge v1, v3, :cond_4

    .line 597
    sget-object v3, Lcom/hf/utils/Lunar;->principleTermMap:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    mul-int/lit8 v4, v0, 0x4

    rem-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    aget-char v2, v3, v4

    .line 598
    .local v2, term:I
    const/16 v3, 0xab

    if-ne v1, v3, :cond_3

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    .line 599
    const/16 v2, 0x15

    .line 601
    :cond_3
    const/16 v3, 0xb5

    if-ne v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    .line 602
    const/16 v2, 0x15

    goto :goto_0

    .line 596
    .end local v2           #term:I
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static sectionalTerm(II)I
    .locals 7
    .parameter "y"
    .parameter "m"

    .prologue
    const/4 v6, 0x4

    .line 563
    add-int/lit8 p1, p1, 0x1

    .line 564
    const/16 v3, 0x76d

    if-lt p0, v3, :cond_0

    const/16 v3, 0x834

    if-le p0, v3, :cond_2

    .line 565
    :cond_0
    const/4 v2, 0x0

    .line 580
    :cond_1
    :goto_0
    return v2

    .line 567
    :cond_2
    const/4 v0, 0x0

    .line 569
    .local v0, index:I
    add-int/lit16 v3, p0, -0x76d

    add-int/lit8 v1, v3, 0x1

    .local v1, ry:I
    :goto_1
    sget-object v3, Lcom/hf/utils/Lunar;->sectionalTermYear:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    aget-char v3, v3, v0

    if-ge v1, v3, :cond_5

    .line 570
    sget-object v3, Lcom/hf/utils/Lunar;->sectionalTermMap:[[C

    add-int/lit8 v4, p1, -0x1

    aget-object v3, v3, v4

    mul-int/lit8 v4, v0, 0x4

    rem-int/lit8 v5, v1, 0x4

    add-int/2addr v4, v5

    aget-char v2, v3, v4

    .line 571
    .local v2, term:I
    const/16 v3, 0x79

    if-ne v1, v3, :cond_3

    if-ne p1, v6, :cond_3

    .line 572
    const/4 v2, 0x5

    .line 574
    :cond_3
    const/16 v3, 0x84

    if-ne v1, v3, :cond_4

    if-ne p1, v6, :cond_4

    .line 575
    const/4 v2, 0x5

    .line 577
    :cond_4
    const/16 v3, 0xc2

    if-ne v1, v3, :cond_1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_1

    .line 578
    const/4 v2, 0x6

    goto :goto_0

    .line 569
    .end local v2           #term:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static toInt(Ljava/lang/String;)I
    .locals 2
    .parameter "str"

    .prologue
    .line 97
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 98
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const/4 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public getAnimalString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 851
    iget-object v0, p0, Lcom/hf/utils/Lunar;->Animals:[Ljava/lang/String;

    iget v1, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    add-int/lit8 v1, v1, -0x4

    rem-int/lit8 v1, v1, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCyclicaDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 947
    iget v0, p0, Lcom/hf/utils/Lunar;->cyclicalDay:I

    invoke-direct {p0, v0}, Lcom/hf/utils/Lunar;->getCyclicalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCyclicaMonth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 939
    iget v0, p0, Lcom/hf/utils/Lunar;->cyclicalMonth:I

    invoke-direct {p0, v0}, Lcom/hf/utils/Lunar;->getCyclicalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCyclicaYear()Ljava/lang/String;
    .locals 1

    .prologue
    .line 931
    iget v0, p0, Lcom/hf/utils/Lunar;->cyclicalYear:I

    invoke-direct {p0, v0}, Lcom/hf/utils/Lunar;->getCyclicalString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCyclicalDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getCyclicaYear()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hf/utils/Lunar;->mYearStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getCyclicaMonth()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hf/utils/Lunar;->mMonthStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 875
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getCyclicaDay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/hf/utils/Lunar;->mDayStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 874
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfWeek()I
    .locals 2

    .prologue
    .line 1068
    iget-object v0, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getDeqiD()I
    .locals 1

    .prologue
    .line 923
    iget v0, p0, Lcom/hf/utils/Lunar;->cyclicalDay:I

    invoke-static {v0}, Lcom/hf/utils/Lunar;->getDeqi(I)I

    move-result v0

    return v0
.end method

.method public getDeqiM()I
    .locals 1

    .prologue
    .line 915
    iget v0, p0, Lcom/hf/utils/Lunar;->cyclicalMonth:I

    invoke-static {v0}, Lcom/hf/utils/Lunar;->getDeqi(I)I

    move-result v0

    return v0
.end method

.method public getDeqiY()I
    .locals 1

    .prologue
    .line 907
    iget v0, p0, Lcom/hf/utils/Lunar;->cyclicalYear:I

    invoke-static {v0}, Lcom/hf/utils/Lunar;->getDeqi(I)I

    move-result v0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1146
    iget-boolean v0, p0, Lcom/hf/utils/Lunar;->isFinded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hf/utils/Lunar;->findFestival()V

    .line 1147
    :cond_0
    iget-object v0, p0, Lcom/hf/utils/Lunar;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getLFestivalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/hf/utils/Lunar;->lFestivalName:Ljava/lang/String;

    return-object v0
.end method

.method public getLunarDateString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getLunarMonthString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/hf/utils/Lunar;->mMonthStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 980
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getLunarDayString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 979
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLunarDay()I
    .locals 1

    .prologue
    .line 1020
    iget v0, p0, Lcom/hf/utils/Lunar;->lunarDay:I

    return v0
.end method

.method public getLunarDayString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 955
    iget v0, p0, Lcom/hf/utils/Lunar;->lunarDay:I

    invoke-direct {p0, v0}, Lcom/hf/utils/Lunar;->getLunarDayString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLunarMonth()I
    .locals 1

    .prologue
    .line 1028
    iget v0, p0, Lcom/hf/utils/Lunar;->lunarMonth:I

    return v0
.end method

.method public getLunarMonthString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->isLeap()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/hf/utils/Lunar;->mContext:Landroid/content/Context;

    const v2, 0x7f08014a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/hf/utils/Lunar;->lunarMonth:I

    invoke-direct {p0, v0}, Lcom/hf/utils/Lunar;->getLunarMonthString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getLunarYear()I
    .locals 1

    .prologue
    .line 1036
    iget v0, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    return v0
.end method

.method public getLunarYearString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    iget v0, p0, Lcom/hf/utils/Lunar;->lunarYear:I

    invoke-direct {p0, v0}, Lcom/hf/utils/Lunar;->getLunarYearString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMaxDayInMonth()I
    .locals 1

    .prologue
    .line 1012
    iget v0, p0, Lcom/hf/utils/Lunar;->maxDayInMonth:I

    return v0
.end method

.method public getRecentFestival()Ljava/lang/String;
    .locals 15

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v0, fastivalDays:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .line 230
    .local v7, sDays:I
    const/4 v8, 0x0

    .line 231
    .local v8, sFastival:Ljava/lang/String;
    const/4 v4, 0x0

    .line 232
    .local v4, lDays:I
    const/4 v5, 0x0

    .line 235
    .local v5, lFastival:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v9, p0, Lcom/hf/utils/Lunar;->sFtv:[Ljava/lang/String;

    array-length v9, v9

    if-lt v3, v9, :cond_2

    .line 249
    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget-object v9, p0, Lcom/hf/utils/Lunar;->lFtv:[Ljava/lang/String;

    array-length v9, v9

    if-lt v3, v9, :cond_4

    .line 265
    :goto_3
    sget-boolean v9, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v9, :cond_0

    .line 266
    const-string v9, "count"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "solar: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "; lunar: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    if-ge v7, v4, :cond_7

    .line 270
    if-gtz v7, :cond_6

    .line 271
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    :cond_1
    :goto_4
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 236
    :cond_2
    sget-object v9, Lcom/hf/utils/Lunar;->sFreg:Ljava/util/regex/Pattern;

    iget-object v10, p0, Lcom/hf/utils/Lunar;->sFtv:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 237
    .local v6, m:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 238
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hf/utils/Lunar;->toInt(Ljava/lang/String;)I

    move-result v2

    .line 239
    .local v2, fastvielM:I
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hf/utils/Lunar;->toInt(Ljava/lang/String;)I

    move-result v1

    .line 240
    .local v1, fastvielD:I
    invoke-direct {p0, v2, v1}, Lcom/hf/utils/Lunar;->getSolarFastivalDays(II)I

    move-result v7

    .line 241
    if-ltz v7, :cond_3

    .line 242
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 243
    goto :goto_1

    .line 235
    .end local v1           #fastvielD:I
    .end local v2           #fastvielM:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 250
    .end local v6           #m:Ljava/util/regex/Matcher;
    :cond_4
    sget-object v9, Lcom/hf/utils/Lunar;->sFreg:Ljava/util/regex/Pattern;

    iget-object v10, p0, Lcom/hf/utils/Lunar;->lFtv:[Ljava/lang/String;

    aget-object v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 251
    .restart local v6       #m:Ljava/util/regex/Matcher;
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 252
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hf/utils/Lunar;->toInt(Ljava/lang/String;)I

    move-result v2

    .line 253
    .restart local v2       #fastvielM:I
    const/4 v9, 0x2

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/hf/utils/Lunar;->toInt(Ljava/lang/String;)I

    move-result v1

    .line 255
    .restart local v1       #fastvielD:I
    invoke-direct {p0, v2, v1}, Lcom/hf/utils/Lunar;->getLunarFastivalDays(II)I

    move-result v4

    .line 257
    if-ltz v4, :cond_5

    .line 258
    const/4 v9, 0x4

    invoke-virtual {v6, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 259
    goto/16 :goto_3

    .line 249
    .end local v1           #fastvielD:I
    .end local v2           #fastvielM:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 272
    .end local v6           #m:Ljava/util/regex/Matcher;
    :cond_6
    if-lez v7, :cond_1

    .line 273
    iget-object v9, p0, Lcom/hf/utils/Lunar;->mContext:Landroid/content/Context;

    const v10, 0x7f08005a

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v11, v12

    const/4 v12, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 275
    :cond_7
    if-le v7, v4, :cond_9

    .line 276
    if-gtz v7, :cond_8

    .line 277
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 278
    :cond_8
    if-lez v7, :cond_1

    .line 279
    iget-object v9, p0, Lcom/hf/utils/Lunar;->mContext:Landroid/content/Context;

    const v10, 0x7f08005a

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v5, v11, v12

    const/4 v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 282
    :cond_9
    if-gtz v7, :cond_a

    .line 283
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4

    .line 284
    :cond_a
    if-lez v7, :cond_1

    .line 285
    iget-object v9, p0, Lcom/hf/utils/Lunar;->mContext:Landroid/content/Context;

    const v10, 0x7f08005a

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_4
.end method

.method public getSFestivalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    iget-object v0, p0, Lcom/hf/utils/Lunar;->sFestivalName:Ljava/lang/String;

    return-object v0
.end method

.method public getSolarDay()I
    .locals 1

    .prologue
    .line 1044
    iget v0, p0, Lcom/hf/utils/Lunar;->solarDay:I

    return v0
.end method

.method public getSolarMonth()I
    .locals 1

    .prologue
    .line 1052
    iget v0, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSolarYear()I
    .locals 1

    .prologue
    .line 1060
    iget v0, p0, Lcom/hf/utils/Lunar;->solarYear:I

    return v0
.end method

.method public getTermDaysString(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .parameter "context"

    .prologue
    .line 337
    const/4 v2, 0x0

    .line 338
    .local v2, days:I
    const/4 v3, 0x0

    .line 339
    .local v3, find:Z
    const/4 v6, 0x0

    .line 340
    .local v6, termName:Ljava/lang/String;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 341
    .local v0, calendar:Ljava/util/Calendar;
    iget-object v8, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 342
    :goto_0
    if-eqz v3, :cond_1

    .line 388
    :goto_1
    const v8, 0x7f080059

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 390
    .local v5, term:Ljava/lang/String;
    sget-boolean v8, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v8, :cond_0

    .line 391
    const-string v8, "getTermDaysString"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    return-object v5

    .line 343
    .end local v5           #term:Ljava/lang/String;
    :cond_1
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 344
    .local v7, year:I
    const/4 v8, 0x2

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 345
    .local v4, month:I
    invoke-static {v7, v4}, Lcom/hf/utils/Lunar;->sectionalTerm(II)I

    move-result v1

    .line 347
    .local v1, day:I
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 348
    iget-object v8, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v8

    if-lez v8, :cond_4

    .line 349
    const/4 v3, 0x1

    .line 350
    iget-object v8, p0, Lcom/hf/utils/Lunar;->solarTerm:[Ljava/lang/String;

    mul-int/lit8 v9, v4, 0x2

    aget-object v6, v8, v9

    .line 351
    sget-boolean v8, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v8, :cond_2

    .line 352
    const-string v8, "getTermDaysString"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "index1 : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v10, v4, 0x2

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; day = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; term "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; year = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_2
    iget v8, p0, Lcom/hf/utils/Lunar;->solarYear:I

    if-le v7, v8, :cond_3

    .line 356
    iget-object v8, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    const/4 v9, 0x5

    invoke-virtual {v8, v9}, Ljava/util/Calendar;->get(I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x1f

    add-int/2addr v2, v8

    .line 357
    add-int/2addr v2, v1

    .line 358
    goto/16 :goto_1

    .line 361
    :cond_3
    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 362
    goto/16 :goto_1

    .line 365
    :cond_4
    invoke-static {v7, v4}, Lcom/hf/utils/Lunar;->principleTerm(II)I

    move-result v1

    .line 366
    const/4 v8, 0x5

    invoke-virtual {v0, v8, v1}, Ljava/util/Calendar;->set(II)V

    .line 367
    iget-object v8, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v8

    if-lez v8, :cond_6

    .line 368
    const/4 v3, 0x1

    .line 369
    iget-object v8, p0, Lcom/hf/utils/Lunar;->solarTerm:[Ljava/lang/String;

    mul-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    aget-object v6, v8, v9

    .line 370
    sget-boolean v8, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v8, :cond_5

    .line 371
    const-string v8, "getTermDaysString"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "index2 : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; day = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; term  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    :cond_5
    const/4 v8, 0x6

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v8

    iget-object v9, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    sub-int/2addr v8, v9

    add-int/2addr v2, v8

    .line 374
    goto/16 :goto_1

    .line 377
    :cond_6
    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    .line 379
    const/16 v8, 0xb

    if-ne v4, v8, :cond_7

    .line 380
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 381
    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 384
    :cond_7
    const/4 v8, 0x2

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Ljava/util/Calendar;->add(II)V

    goto/16 :goto_0
.end method

.method public getTermString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 859
    const-string v0, ""

    .line 860
    .local v0, termString:Ljava/lang/String;
    iget v1, p0, Lcom/hf/utils/Lunar;->solarYear:I

    iget v2, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/hf/utils/Lunar;->getSolarTermDay(II)I

    move-result v1

    iget v2, p0, Lcom/hf/utils/Lunar;->solarDay:I

    if-ne v1, v2, :cond_1

    .line 861
    iget-object v1, p0, Lcom/hf/utils/Lunar;->solarTerm:[Ljava/lang/String;

    iget v2, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    mul-int/lit8 v2, v2, 0x2

    aget-object v0, v1, v2

    .line 865
    :cond_0
    :goto_0
    return-object v0

    .line 862
    :cond_1
    iget v1, p0, Lcom/hf/utils/Lunar;->solarYear:I

    iget v2, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lcom/hf/utils/Lunar;->getSolarTermDay(II)I

    move-result v1

    iget v2, p0, Lcom/hf/utils/Lunar;->solarDay:I

    if-ne v1, v2, :cond_0

    .line 863
    iget-object v1, p0, Lcom/hf/utils/Lunar;->solarTerm:[Ljava/lang/String;

    iget v2, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v1, v2

    goto :goto_0
.end method

.method public getTiananD()I
    .locals 1

    .prologue
    .line 899
    iget v0, p0, Lcom/hf/utils/Lunar;->cyclicalDay:I

    invoke-static {v0}, Lcom/hf/utils/Lunar;->getTianan(I)I

    move-result v0

    return v0
.end method

.method public getTiananM()I
    .locals 1

    .prologue
    .line 891
    iget v0, p0, Lcom/hf/utils/Lunar;->cyclicalMonth:I

    invoke-static {v0}, Lcom/hf/utils/Lunar;->getTianan(I)I

    move-result v0

    return v0
.end method

.method public getTiananY()I
    .locals 1

    .prologue
    .line 883
    iget v0, p0, Lcom/hf/utils/Lunar;->cyclicalYear:I

    invoke-static {v0}, Lcom/hf/utils/Lunar;->getTianan(I)I

    move-result v0

    return v0
.end method

.method public isBigMonth()Z
    .locals 2

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getMaxDayInMonth()I

    move-result v0

    const/16 v1, 0x1d

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBlackFriday()Z
    .locals 2

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->getSolarDay()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/hf/utils/Lunar;->solar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFestival()Z
    .locals 1

    .prologue
    .line 1129
    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->isSFestival()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hf/utils/Lunar;->isLFestival()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isHoliday()Z
    .locals 1

    .prologue
    .line 1137
    iget-boolean v0, p0, Lcom/hf/utils/Lunar;->isFinded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hf/utils/Lunar;->findFestival()V

    .line 1138
    :cond_0
    iget-boolean v0, p0, Lcom/hf/utils/Lunar;->isHoliday:Z

    return v0
.end method

.method public isLFestival()Z
    .locals 1

    .prologue
    .line 1111
    iget-boolean v0, p0, Lcom/hf/utils/Lunar;->isFinded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hf/utils/Lunar;->findFestival()V

    .line 1112
    :cond_0
    iget-boolean v0, p0, Lcom/hf/utils/Lunar;->isLFestival:Z

    return v0
.end method

.method public isLeap()Z
    .locals 1

    .prologue
    .line 988
    iget-boolean v0, p0, Lcom/hf/utils/Lunar;->isLeap:Z

    return v0
.end method

.method public isLeapYear()Z
    .locals 1

    .prologue
    .line 996
    iget-boolean v0, p0, Lcom/hf/utils/Lunar;->isLeapYear:Z

    return v0
.end method

.method public isSFestival()Z
    .locals 1

    .prologue
    .line 1120
    iget-boolean v0, p0, Lcom/hf/utils/Lunar;->isFinded:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/hf/utils/Lunar;->findFestival()V

    .line 1121
    :cond_0
    iget-boolean v0, p0, Lcom/hf/utils/Lunar;->isSFestival:Z

    return v0
.end method

.method public isToday()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 1084
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1085
    .local v0, clr:Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Lcom/hf/utils/Lunar;->solarYear:I

    if-ne v2, v3, :cond_0

    .line 1086
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Lcom/hf/utils/Lunar;->solarMonth:I

    if-ne v2, v3, :cond_0

    .line 1087
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget v3, p0, Lcom/hf/utils/Lunar;->solarDay:I

    if-ne v2, v3, :cond_0

    .line 1085
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
