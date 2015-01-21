.class public final Lcom/autonavi/xmgd/navigator/DataFeedback;
.super Lcom/autonavi/xmgd/controls/GDActivity;

# interfaces
.implements Lcom/autonavi/xmgd/c/e;
.implements Lcom/autonavi/xmgd/controls/r;


# instance fields
.field private a:I

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/Spinner;

.field private g:I

.field private h:Lcom/autonavi/xm/navigation/server/poi/GPoi;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/controls/GDActivity;-><init>()V

    const/16 v0, -0x7c1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->h:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->k:Z

    return-void
.end method

.method private a(Landroid/widget/Spinner;I)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    :cond_0
    return p2
.end method

.method static synthetic a(Lcom/autonavi/xmgd/navigator/DataFeedback;)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1

    div-int/lit8 v0, p1, 0x64

    mul-int/lit8 v0, v0, 0x64

    sparse-switch v0, :sswitch_data_0

    const-string v0, ""

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "010"

    goto :goto_0

    :sswitch_1
    const-string v0, "010"

    goto :goto_0

    :sswitch_2
    const-string v0, "010"

    goto :goto_0

    :sswitch_3
    const-string v0, "022"

    goto :goto_0

    :sswitch_4
    const-string v0, "022"

    goto :goto_0

    :sswitch_5
    const-string v0, "022"

    goto :goto_0

    :sswitch_6
    const-string v0, "0311"

    goto :goto_0

    :sswitch_7
    const-string v0, "0315"

    goto :goto_0

    :sswitch_8
    const-string v0, "0335"

    goto :goto_0

    :sswitch_9
    const-string v0, "0310"

    goto :goto_0

    :sswitch_a
    const-string v0, "0319"

    goto :goto_0

    :sswitch_b
    const-string v0, "0312"

    goto :goto_0

    :sswitch_c
    const-string v0, "0313"

    goto :goto_0

    :sswitch_d
    const-string v0, "0314"

    goto :goto_0

    :sswitch_e
    const-string v0, "0317"

    goto :goto_0

    :sswitch_f
    const-string v0, "0316"

    goto :goto_0

    :sswitch_10
    const-string v0, "0318"

    goto :goto_0

    :sswitch_11
    const-string v0, "0351"

    goto :goto_0

    :sswitch_12
    const-string v0, "0352"

    goto :goto_0

    :sswitch_13
    const-string v0, "0353"

    goto :goto_0

    :sswitch_14
    const-string v0, "0355"

    goto :goto_0

    :sswitch_15
    const-string v0, "0356"

    goto :goto_0

    :sswitch_16
    const-string v0, "0349"

    goto :goto_0

    :sswitch_17
    const-string v0, "0354"

    goto :goto_0

    :sswitch_18
    const-string v0, "0359"

    goto :goto_0

    :sswitch_19
    const-string v0, "0350"

    goto :goto_0

    :sswitch_1a
    const-string v0, "0357"

    goto :goto_0

    :sswitch_1b
    const-string v0, "0358"

    goto :goto_0

    :sswitch_1c
    const-string v0, "0471"

    goto :goto_0

    :sswitch_1d
    const-string v0, "0472"

    goto :goto_0

    :sswitch_1e
    const-string v0, "0473"

    goto :goto_0

    :sswitch_1f
    const-string v0, "0476"

    goto :goto_0

    :sswitch_20
    const-string v0, "0475"

    goto :goto_0

    :sswitch_21
    const-string v0, "0477"

    goto :goto_0

    :sswitch_22
    const-string v0, "0470"

    goto :goto_0

    :sswitch_23
    const-string v0, "0478"

    goto :goto_0

    :sswitch_24
    const-string v0, "0474"

    goto :goto_0

    :sswitch_25
    const-string v0, "0482"

    goto :goto_0

    :sswitch_26
    const-string v0, "0479"

    goto :goto_0

    :sswitch_27
    const-string v0, "0483"

    goto :goto_0

    :sswitch_28
    const-string v0, "024"

    goto :goto_0

    :sswitch_29
    const-string v0, "0411"

    goto :goto_0

    :sswitch_2a
    const-string v0, "0412"

    goto/16 :goto_0

    :sswitch_2b
    const-string v0, "0413"

    goto/16 :goto_0

    :sswitch_2c
    const-string v0, "0414"

    goto/16 :goto_0

    :sswitch_2d
    const-string v0, "0415"

    goto/16 :goto_0

    :sswitch_2e
    const-string v0, "0416"

    goto/16 :goto_0

    :sswitch_2f
    const-string v0, "0417"

    goto/16 :goto_0

    :sswitch_30
    const-string v0, "0418"

    goto/16 :goto_0

    :sswitch_31
    const-string v0, "0419"

    goto/16 :goto_0

    :sswitch_32
    const-string v0, "0427"

    goto/16 :goto_0

    :sswitch_33
    const-string v0, "0410"

    goto/16 :goto_0

    :sswitch_34
    const-string v0, "0421"

    goto/16 :goto_0

    :sswitch_35
    const-string v0, "0429"

    goto/16 :goto_0

    :sswitch_36
    const-string v0, "0431"

    goto/16 :goto_0

    :sswitch_37
    const-string v0, "0432"

    goto/16 :goto_0

    :sswitch_38
    const-string v0, "0434"

    goto/16 :goto_0

    :sswitch_39
    const-string v0, "0437"

    goto/16 :goto_0

    :sswitch_3a
    const-string v0, "0435"

    goto/16 :goto_0

    :sswitch_3b
    const-string v0, "0439"

    goto/16 :goto_0

    :sswitch_3c
    const-string v0, "0438"

    goto/16 :goto_0

    :sswitch_3d
    const-string v0, "0436"

    goto/16 :goto_0

    :sswitch_3e
    const-string v0, "0433"

    goto/16 :goto_0

    :sswitch_3f
    const-string v0, "0451"

    goto/16 :goto_0

    :sswitch_40
    const-string v0, "0452"

    goto/16 :goto_0

    :sswitch_41
    const-string v0, "0467"

    goto/16 :goto_0

    :sswitch_42
    const-string v0, "0468"

    goto/16 :goto_0

    :sswitch_43
    const-string v0, "0469"

    goto/16 :goto_0

    :sswitch_44
    const-string v0, "0459"

    goto/16 :goto_0

    :sswitch_45
    const-string v0, "0458"

    goto/16 :goto_0

    :sswitch_46
    const-string v0, "0454"

    goto/16 :goto_0

    :sswitch_47
    const-string v0, "0464"

    goto/16 :goto_0

    :sswitch_48
    const-string v0, "0453"

    goto/16 :goto_0

    :sswitch_49
    const-string v0, "0456"

    goto/16 :goto_0

    :sswitch_4a
    const-string v0, "0455"

    goto/16 :goto_0

    :sswitch_4b
    const-string v0, "0457"

    goto/16 :goto_0

    :sswitch_4c
    const-string v0, "021"

    goto/16 :goto_0

    :sswitch_4d
    const-string v0, "021"

    goto/16 :goto_0

    :sswitch_4e
    const-string v0, "021"

    goto/16 :goto_0

    :sswitch_4f
    const-string v0, "025"

    goto/16 :goto_0

    :sswitch_50
    const-string v0, "0510"

    goto/16 :goto_0

    :sswitch_51
    const-string v0, "0516"

    goto/16 :goto_0

    :sswitch_52
    const-string v0, "0519"

    goto/16 :goto_0

    :sswitch_53
    const-string v0, "0512"

    goto/16 :goto_0

    :sswitch_54
    const-string v0, "0513"

    goto/16 :goto_0

    :sswitch_55
    const-string v0, "0518"

    goto/16 :goto_0

    :sswitch_56
    const-string v0, "0517"

    goto/16 :goto_0

    :sswitch_57
    const-string v0, "0515"

    goto/16 :goto_0

    :sswitch_58
    const-string v0, "0514"

    goto/16 :goto_0

    :sswitch_59
    const-string v0, "0511"

    goto/16 :goto_0

    :sswitch_5a
    const-string v0, "0523"

    goto/16 :goto_0

    :sswitch_5b
    const-string v0, "0527"

    goto/16 :goto_0

    :sswitch_5c
    const-string v0, "0571"

    goto/16 :goto_0

    :sswitch_5d
    const-string v0, "0574"

    goto/16 :goto_0

    :sswitch_5e
    const-string v0, "0577"

    goto/16 :goto_0

    :sswitch_5f
    const-string v0, "0573"

    goto/16 :goto_0

    :sswitch_60
    const-string v0, "0572"

    goto/16 :goto_0

    :sswitch_61
    const-string v0, "0575"

    goto/16 :goto_0

    :sswitch_62
    const-string v0, "0579"

    goto/16 :goto_0

    :sswitch_63
    const-string v0, "0570"

    goto/16 :goto_0

    :sswitch_64
    const-string v0, "0580"

    goto/16 :goto_0

    :sswitch_65
    const-string v0, "0576"

    goto/16 :goto_0

    :sswitch_66
    const-string v0, "0578"

    goto/16 :goto_0

    :sswitch_67
    const-string v0, "0551"

    goto/16 :goto_0

    :sswitch_68
    const-string v0, "0553"

    goto/16 :goto_0

    :sswitch_69
    const-string v0, "0552"

    goto/16 :goto_0

    :sswitch_6a
    const-string v0, "0554"

    goto/16 :goto_0

    :sswitch_6b
    const-string v0, "0555"

    goto/16 :goto_0

    :sswitch_6c
    const-string v0, "0561"

    goto/16 :goto_0

    :sswitch_6d
    const-string v0, "0562"

    goto/16 :goto_0

    :sswitch_6e
    const-string v0, "0556"

    goto/16 :goto_0

    :sswitch_6f
    const-string v0, "0559"

    goto/16 :goto_0

    :sswitch_70
    const-string v0, "0550"

    goto/16 :goto_0

    :sswitch_71
    const-string v0, "0558"

    goto/16 :goto_0

    :sswitch_72
    const-string v0, "0557"

    goto/16 :goto_0

    :sswitch_73
    const-string v0, "0565"

    goto/16 :goto_0

    :sswitch_74
    const-string v0, "0564"

    goto/16 :goto_0

    :sswitch_75
    const-string v0, "0558"

    goto/16 :goto_0

    :sswitch_76
    const-string v0, "0566"

    goto/16 :goto_0

    :sswitch_77
    const-string v0, "0563"

    goto/16 :goto_0

    :sswitch_78
    const-string v0, "0591"

    goto/16 :goto_0

    :sswitch_79
    const-string v0, "0592"

    goto/16 :goto_0

    :sswitch_7a
    const-string v0, "0594"

    goto/16 :goto_0

    :sswitch_7b
    const-string v0, "0598"

    goto/16 :goto_0

    :sswitch_7c
    const-string v0, "0595"

    goto/16 :goto_0

    :sswitch_7d
    const-string v0, "0596"

    goto/16 :goto_0

    :sswitch_7e
    const-string v0, "0599"

    goto/16 :goto_0

    :sswitch_7f
    const-string v0, "0597"

    goto/16 :goto_0

    :sswitch_80
    const-string v0, "0593"

    goto/16 :goto_0

    :sswitch_81
    const-string v0, "0791"

    goto/16 :goto_0

    :sswitch_82
    const-string v0, "0798"

    goto/16 :goto_0

    :sswitch_83
    const-string v0, "0799"

    goto/16 :goto_0

    :sswitch_84
    const-string v0, "0792"

    goto/16 :goto_0

    :sswitch_85
    const-string v0, "0790"

    goto/16 :goto_0

    :sswitch_86
    const-string v0, "0701"

    goto/16 :goto_0

    :sswitch_87
    const-string v0, "0797"

    goto/16 :goto_0

    :sswitch_88
    const-string v0, "0796"

    goto/16 :goto_0

    :sswitch_89
    const-string v0, "0795"

    goto/16 :goto_0

    :sswitch_8a
    const-string v0, "0794"

    goto/16 :goto_0

    :sswitch_8b
    const-string v0, "0793"

    goto/16 :goto_0

    :sswitch_8c
    const-string v0, "0531"

    goto/16 :goto_0

    :sswitch_8d
    const-string v0, "0532"

    goto/16 :goto_0

    :sswitch_8e
    const-string v0, "0533"

    goto/16 :goto_0

    :sswitch_8f
    const-string v0, "0632"

    goto/16 :goto_0

    :sswitch_90
    const-string v0, "0546"

    goto/16 :goto_0

    :sswitch_91
    const-string v0, "0535"

    goto/16 :goto_0

    :sswitch_92
    const-string v0, "0536"

    goto/16 :goto_0

    :sswitch_93
    const-string v0, "0537"

    goto/16 :goto_0

    :sswitch_94
    const-string v0, "0538"

    goto/16 :goto_0

    :sswitch_95
    const-string v0, "0631"

    goto/16 :goto_0

    :sswitch_96
    const-string v0, "0633"

    goto/16 :goto_0

    :sswitch_97
    const-string v0, "0634"

    goto/16 :goto_0

    :sswitch_98
    const-string v0, "0539"

    goto/16 :goto_0

    :sswitch_99
    const-string v0, "0534"

    goto/16 :goto_0

    :sswitch_9a
    const-string v0, "0635"

    goto/16 :goto_0

    :sswitch_9b
    const-string v0, "0543"

    goto/16 :goto_0

    :sswitch_9c
    const-string v0, "0530"

    goto/16 :goto_0

    :sswitch_9d
    const-string v0, "0371"

    goto/16 :goto_0

    :sswitch_9e
    const-string v0, "0378"

    goto/16 :goto_0

    :sswitch_9f
    const-string v0, "0379"

    goto/16 :goto_0

    :sswitch_a0
    const-string v0, "0375"

    goto/16 :goto_0

    :sswitch_a1
    const-string v0, "0372"

    goto/16 :goto_0

    :sswitch_a2
    const-string v0, "0392"

    goto/16 :goto_0

    :sswitch_a3
    const-string v0, "0373"

    goto/16 :goto_0

    :sswitch_a4
    const-string v0, "0391"

    goto/16 :goto_0

    :sswitch_a5
    const-string v0, "0393"

    goto/16 :goto_0

    :sswitch_a6
    const-string v0, "0374"

    goto/16 :goto_0

    :sswitch_a7
    const-string v0, "0395"

    goto/16 :goto_0

    :sswitch_a8
    const-string v0, "0398"

    goto/16 :goto_0

    :sswitch_a9
    const-string v0, "0377"

    goto/16 :goto_0

    :sswitch_aa
    const-string v0, "0370"

    goto/16 :goto_0

    :sswitch_ab
    const-string v0, "0376"

    goto/16 :goto_0

    :sswitch_ac
    const-string v0, "0394"

    goto/16 :goto_0

    :sswitch_ad
    const-string v0, "0396"

    goto/16 :goto_0

    :sswitch_ae
    const-string v0, "0391"

    goto/16 :goto_0

    :sswitch_af
    const-string v0, "027"

    goto/16 :goto_0

    :sswitch_b0
    const-string v0, "0714"

    goto/16 :goto_0

    :sswitch_b1
    const-string v0, "0719"

    goto/16 :goto_0

    :sswitch_b2
    const-string v0, "0717"

    goto/16 :goto_0

    :sswitch_b3
    const-string v0, "0710"

    goto/16 :goto_0

    :sswitch_b4
    const-string v0, "0711"

    goto/16 :goto_0

    :sswitch_b5
    const-string v0, "0724"

    goto/16 :goto_0

    :sswitch_b6
    const-string v0, "0712"

    goto/16 :goto_0

    :sswitch_b7
    const-string v0, "0716"

    goto/16 :goto_0

    :sswitch_b8
    const-string v0, "0713"

    goto/16 :goto_0

    :sswitch_b9
    const-string v0, "0715"

    goto/16 :goto_0

    :sswitch_ba
    const-string v0, "0722"

    goto/16 :goto_0

    :sswitch_bb
    const-string v0, "0718"

    goto/16 :goto_0

    :sswitch_bc
    const-string v0, "0728"

    goto/16 :goto_0

    :sswitch_bd
    const-string v0, "0728"

    goto/16 :goto_0

    :sswitch_be
    const-string v0, "0728"

    goto/16 :goto_0

    :sswitch_bf
    const-string v0, "0719"

    goto/16 :goto_0

    :sswitch_c0
    const-string v0, "0731"

    goto/16 :goto_0

    :sswitch_c1
    const-string v0, "0733"

    goto/16 :goto_0

    :sswitch_c2
    const-string v0, "0732"

    goto/16 :goto_0

    :sswitch_c3
    const-string v0, "0734"

    goto/16 :goto_0

    :sswitch_c4
    const-string v0, "0739"

    goto/16 :goto_0

    :sswitch_c5
    const-string v0, "0730"

    goto/16 :goto_0

    :sswitch_c6
    const-string v0, "0736"

    goto/16 :goto_0

    :sswitch_c7
    const-string v0, "0744"

    goto/16 :goto_0

    :sswitch_c8
    const-string v0, "0737"

    goto/16 :goto_0

    :sswitch_c9
    const-string v0, "0735"

    goto/16 :goto_0

    :sswitch_ca
    const-string v0, "0746"

    goto/16 :goto_0

    :sswitch_cb
    const-string v0, "0745"

    goto/16 :goto_0

    :sswitch_cc
    const-string v0, "0738"

    goto/16 :goto_0

    :sswitch_cd
    const-string v0, "0743"

    goto/16 :goto_0

    :sswitch_ce
    const-string v0, "020"

    goto/16 :goto_0

    :sswitch_cf
    const-string v0, "0751"

    goto/16 :goto_0

    :sswitch_d0
    const-string v0, "0755"

    goto/16 :goto_0

    :sswitch_d1
    const-string v0, "0756"

    goto/16 :goto_0

    :sswitch_d2
    const-string v0, "0754"

    goto/16 :goto_0

    :sswitch_d3
    const-string v0, "0757"

    goto/16 :goto_0

    :sswitch_d4
    const-string v0, "0750"

    goto/16 :goto_0

    :sswitch_d5
    const-string v0, "0759"

    goto/16 :goto_0

    :sswitch_d6
    const-string v0, "0668"

    goto/16 :goto_0

    :sswitch_d7
    const-string v0, "0758"

    goto/16 :goto_0

    :sswitch_d8
    const-string v0, "0752"

    goto/16 :goto_0

    :sswitch_d9
    const-string v0, "0753"

    goto/16 :goto_0

    :sswitch_da
    const-string v0, "0660"

    goto/16 :goto_0

    :sswitch_db
    const-string v0, "0762"

    goto/16 :goto_0

    :sswitch_dc
    const-string v0, "0662"

    goto/16 :goto_0

    :sswitch_dd
    const-string v0, "0763"

    goto/16 :goto_0

    :sswitch_de
    const-string v0, "0769"

    goto/16 :goto_0

    :sswitch_df
    const-string v0, "0760"

    goto/16 :goto_0

    :sswitch_e0
    const-string v0, "0768"

    goto/16 :goto_0

    :sswitch_e1
    const-string v0, "0663"

    goto/16 :goto_0

    :sswitch_e2
    const-string v0, "0766"

    goto/16 :goto_0

    :sswitch_e3
    const-string v0, "0771"

    goto/16 :goto_0

    :sswitch_e4
    const-string v0, "0772"

    goto/16 :goto_0

    :sswitch_e5
    const-string v0, "0773"

    goto/16 :goto_0

    :sswitch_e6
    const-string v0, "0774"

    goto/16 :goto_0

    :sswitch_e7
    const-string v0, "0779"

    goto/16 :goto_0

    :sswitch_e8
    const-string v0, "0770"

    goto/16 :goto_0

    :sswitch_e9
    const-string v0, "0777"

    goto/16 :goto_0

    :sswitch_ea
    const-string v0, "0755"

    goto/16 :goto_0

    :sswitch_eb
    const-string v0, "0775"

    goto/16 :goto_0

    :sswitch_ec
    const-string v0, "0776"

    goto/16 :goto_0

    :sswitch_ed
    const-string v0, "0774"

    goto/16 :goto_0

    :sswitch_ee
    const-string v0, "0778"

    goto/16 :goto_0

    :sswitch_ef
    const-string v0, "0772"

    goto/16 :goto_0

    :sswitch_f0
    const-string v0, "0771"

    goto/16 :goto_0

    :sswitch_f1
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_f2
    const-string v0, "0899"

    goto/16 :goto_0

    :sswitch_f3
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_f4
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_f5
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_f6
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_f7
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_f8
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_f9
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_fa
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_fb
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_fc
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_fd
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_fe
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_ff
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_100
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_101
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_102
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_103
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_104
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_105
    const-string v0, "0898"

    goto/16 :goto_0

    :sswitch_106
    const-string v0, "023"

    goto/16 :goto_0

    :sswitch_107
    const-string v0, "023"

    goto/16 :goto_0

    :sswitch_108
    const-string v0, "023"

    goto/16 :goto_0

    :sswitch_109
    const-string v0, "028"

    goto/16 :goto_0

    :sswitch_10a
    const-string v0, "0813"

    goto/16 :goto_0

    :sswitch_10b
    const-string v0, "0812"

    goto/16 :goto_0

    :sswitch_10c
    const-string v0, "0830"

    goto/16 :goto_0

    :sswitch_10d
    const-string v0, "0838"

    goto/16 :goto_0

    :sswitch_10e
    const-string v0, "0816"

    goto/16 :goto_0

    :sswitch_10f
    const-string v0, "0839"

    goto/16 :goto_0

    :sswitch_110
    const-string v0, "0825"

    goto/16 :goto_0

    :sswitch_111
    const-string v0, "0832"

    goto/16 :goto_0

    :sswitch_112
    const-string v0, "0833"

    goto/16 :goto_0

    :sswitch_113
    const-string v0, "0817"

    goto/16 :goto_0

    :sswitch_114
    const-string v0, "0833"

    goto/16 :goto_0

    :sswitch_115
    const-string v0, "0831"

    goto/16 :goto_0

    :sswitch_116
    const-string v0, "0826"

    goto/16 :goto_0

    :sswitch_117
    const-string v0, "0818"

    goto/16 :goto_0

    :sswitch_118
    const-string v0, "0835"

    goto/16 :goto_0

    :sswitch_119
    const-string v0, "0827"

    goto/16 :goto_0

    :sswitch_11a
    const-string v0, "0832"

    goto/16 :goto_0

    :sswitch_11b
    const-string v0, "0837"

    goto/16 :goto_0

    :sswitch_11c
    const-string v0, "0836"

    goto/16 :goto_0

    :sswitch_11d
    const-string v0, "0834"

    goto/16 :goto_0

    :sswitch_11e
    const-string v0, "0851"

    goto/16 :goto_0

    :sswitch_11f
    const-string v0, "0858"

    goto/16 :goto_0

    :sswitch_120
    const-string v0, "0852"

    goto/16 :goto_0

    :sswitch_121
    const-string v0, "0853"

    goto/16 :goto_0

    :sswitch_122
    const-string v0, "0856"

    goto/16 :goto_0

    :sswitch_123
    const-string v0, "0859"

    goto/16 :goto_0

    :sswitch_124
    const-string v0, "0857"

    goto/16 :goto_0

    :sswitch_125
    const-string v0, "0855"

    goto/16 :goto_0

    :sswitch_126
    const-string v0, "0854"

    goto/16 :goto_0

    :sswitch_127
    const-string v0, "0871"

    goto/16 :goto_0

    :sswitch_128
    const-string v0, "0874"

    goto/16 :goto_0

    :sswitch_129
    const-string v0, "0877"

    goto/16 :goto_0

    :sswitch_12a
    const-string v0, "0875"

    goto/16 :goto_0

    :sswitch_12b
    const-string v0, "0870"

    goto/16 :goto_0

    :sswitch_12c
    const-string v0, "0888"

    goto/16 :goto_0

    :sswitch_12d
    const-string v0, "0879"

    goto/16 :goto_0

    :sswitch_12e
    const-string v0, "0883"

    goto/16 :goto_0

    :sswitch_12f
    const-string v0, "0878"

    goto/16 :goto_0

    :sswitch_130
    const-string v0, "0873"

    goto/16 :goto_0

    :sswitch_131
    const-string v0, "0876"

    goto/16 :goto_0

    :sswitch_132
    const-string v0, "0691"

    goto/16 :goto_0

    :sswitch_133
    const-string v0, "0872"

    goto/16 :goto_0

    :sswitch_134
    const-string v0, "0692"

    goto/16 :goto_0

    :sswitch_135
    const-string v0, "0886"

    goto/16 :goto_0

    :sswitch_136
    const-string v0, "0887"

    goto/16 :goto_0

    :sswitch_137
    const-string v0, "0891"

    goto/16 :goto_0

    :sswitch_138
    const-string v0, "0895"

    goto/16 :goto_0

    :sswitch_139
    const-string v0, "0893"

    goto/16 :goto_0

    :sswitch_13a
    const-string v0, "0892"

    goto/16 :goto_0

    :sswitch_13b
    const-string v0, "0896"

    goto/16 :goto_0

    :sswitch_13c
    const-string v0, "0897"

    goto/16 :goto_0

    :sswitch_13d
    const-string v0, "0894"

    goto/16 :goto_0

    :sswitch_13e
    const-string v0, "029"

    goto/16 :goto_0

    :sswitch_13f
    const-string v0, "0919"

    goto/16 :goto_0

    :sswitch_140
    const-string v0, "0917"

    goto/16 :goto_0

    :sswitch_141
    const-string v0, "0910"

    goto/16 :goto_0

    :sswitch_142
    const-string v0, "0913"

    goto/16 :goto_0

    :sswitch_143
    const-string v0, "0911"

    goto/16 :goto_0

    :sswitch_144
    const-string v0, "0916"

    goto/16 :goto_0

    :sswitch_145
    const-string v0, "0912"

    goto/16 :goto_0

    :sswitch_146
    const-string v0, "0915"

    goto/16 :goto_0

    :sswitch_147
    const-string v0, "0914"

    goto/16 :goto_0

    :sswitch_148
    const-string v0, "0931"

    goto/16 :goto_0

    :sswitch_149
    const-string v0, "0937"

    goto/16 :goto_0

    :sswitch_14a
    const-string v0, "0935"

    goto/16 :goto_0

    :sswitch_14b
    const-string v0, "0943"

    goto/16 :goto_0

    :sswitch_14c
    const-string v0, "0938"

    goto/16 :goto_0

    :sswitch_14d
    const-string v0, "0935"

    goto/16 :goto_0

    :sswitch_14e
    const-string v0, "0936"

    goto/16 :goto_0

    :sswitch_14f
    const-string v0, "0933"

    goto/16 :goto_0

    :sswitch_150
    const-string v0, "0937"

    goto/16 :goto_0

    :sswitch_151
    const-string v0, "0934"

    goto/16 :goto_0

    :sswitch_152
    const-string v0, "0932"

    goto/16 :goto_0

    :sswitch_153
    const-string v0, "0935"

    goto/16 :goto_0

    :sswitch_154
    const-string v0, "0930"

    goto/16 :goto_0

    :sswitch_155
    const-string v0, "0941"

    goto/16 :goto_0

    :sswitch_156
    const-string v0, "0971"

    goto/16 :goto_0

    :sswitch_157
    const-string v0, "0972"

    goto/16 :goto_0

    :sswitch_158
    const-string v0, "0970"

    goto/16 :goto_0

    :sswitch_159
    const-string v0, "0973"

    goto/16 :goto_0

    :sswitch_15a
    const-string v0, "0974"

    goto/16 :goto_0

    :sswitch_15b
    const-string v0, "0975"

    goto/16 :goto_0

    :sswitch_15c
    const-string v0, "0976"

    goto/16 :goto_0

    :sswitch_15d
    const-string v0, "0977"

    goto/16 :goto_0

    :sswitch_15e
    const-string v0, "0951"

    goto/16 :goto_0

    :sswitch_15f
    const-string v0, "0952"

    goto/16 :goto_0

    :sswitch_160
    const-string v0, "0953"

    goto/16 :goto_0

    :sswitch_161
    const-string v0, "0954"

    goto/16 :goto_0

    :sswitch_162
    const-string v0, "0953"

    goto/16 :goto_0

    :sswitch_163
    const-string v0, "0991"

    goto/16 :goto_0

    :sswitch_164
    const-string v0, "0990"

    goto/16 :goto_0

    :sswitch_165
    const-string v0, "0995"

    goto/16 :goto_0

    :sswitch_166
    const-string v0, "0902"

    goto/16 :goto_0

    :sswitch_167
    const-string v0, "0994"

    goto/16 :goto_0

    :sswitch_168
    const-string v0, "0909"

    goto/16 :goto_0

    :sswitch_169
    const-string v0, "0996"

    goto/16 :goto_0

    :sswitch_16a
    const-string v0, "0997"

    goto/16 :goto_0

    :sswitch_16b
    const-string v0, "0908"

    goto/16 :goto_0

    :sswitch_16c
    const-string v0, "0998"

    goto/16 :goto_0

    :sswitch_16d
    const-string v0, "0903"

    goto/16 :goto_0

    :sswitch_16e
    const-string v0, "0999"

    goto/16 :goto_0

    :sswitch_16f
    const-string v0, "0901"

    goto/16 :goto_0

    :sswitch_170
    const-string v0, "0906"

    goto/16 :goto_0

    :sswitch_171
    const-string v0, "0993"

    goto/16 :goto_0

    :sswitch_172
    const-string v0, "00852"

    goto/16 :goto_0

    :sswitch_173
    const-string v0, "00853"

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1adb0 -> :sswitch_0
        0x1ae14 -> :sswitch_1
        0x1ae78 -> :sswitch_2
        0x1d4c0 -> :sswitch_3
        0x1d524 -> :sswitch_4
        0x1d588 -> :sswitch_5
        0x1fc34 -> :sswitch_6
        0x1fc98 -> :sswitch_7
        0x1fcfc -> :sswitch_8
        0x1fd60 -> :sswitch_9
        0x1fdc4 -> :sswitch_a
        0x1fe28 -> :sswitch_b
        0x1fe8c -> :sswitch_c
        0x1fef0 -> :sswitch_d
        0x1ff54 -> :sswitch_e
        0x1ffb8 -> :sswitch_f
        0x2001c -> :sswitch_10
        0x22344 -> :sswitch_11
        0x223a8 -> :sswitch_12
        0x2240c -> :sswitch_13
        0x22470 -> :sswitch_14
        0x224d4 -> :sswitch_15
        0x22538 -> :sswitch_16
        0x2259c -> :sswitch_17
        0x22600 -> :sswitch_18
        0x22664 -> :sswitch_19
        0x226c8 -> :sswitch_1a
        0x2272c -> :sswitch_1b
        0x24a54 -> :sswitch_1c
        0x24ab8 -> :sswitch_1d
        0x24b1c -> :sswitch_1e
        0x24b80 -> :sswitch_1f
        0x24be4 -> :sswitch_20
        0x24c48 -> :sswitch_21
        0x24cac -> :sswitch_22
        0x24d10 -> :sswitch_23
        0x24d74 -> :sswitch_24
        0x25288 -> :sswitch_25
        0x253b4 -> :sswitch_26
        0x25544 -> :sswitch_27
        0x334b4 -> :sswitch_28
        0x33518 -> :sswitch_29
        0x3357c -> :sswitch_2a
        0x335e0 -> :sswitch_2b
        0x33644 -> :sswitch_2c
        0x336a8 -> :sswitch_2d
        0x3370c -> :sswitch_2e
        0x33770 -> :sswitch_2f
        0x337d4 -> :sswitch_30
        0x33838 -> :sswitch_31
        0x3389c -> :sswitch_32
        0x33900 -> :sswitch_33
        0x33964 -> :sswitch_34
        0x339c8 -> :sswitch_35
        0x35bc4 -> :sswitch_36
        0x35c28 -> :sswitch_37
        0x35c8c -> :sswitch_38
        0x35cf0 -> :sswitch_39
        0x35d54 -> :sswitch_3a
        0x35db8 -> :sswitch_3b
        0x35e1c -> :sswitch_3c
        0x35e80 -> :sswitch_3d
        0x364c0 -> :sswitch_3e
        0x382d4 -> :sswitch_3f
        0x38338 -> :sswitch_40
        0x3839c -> :sswitch_41
        0x38400 -> :sswitch_42
        0x38464 -> :sswitch_43
        0x384c8 -> :sswitch_44
        0x3852c -> :sswitch_45
        0x38590 -> :sswitch_46
        0x385f4 -> :sswitch_47
        0x38658 -> :sswitch_48
        0x386bc -> :sswitch_49
        0x38720 -> :sswitch_4a
        0x38cfc -> :sswitch_4b
        0x4baf0 -> :sswitch_4c
        0x4bb54 -> :sswitch_4d
        0x4bbb8 -> :sswitch_4e
        0x4e264 -> :sswitch_4f
        0x4e2c8 -> :sswitch_50
        0x4e32c -> :sswitch_51
        0x4e390 -> :sswitch_52
        0x4e3f4 -> :sswitch_53
        0x4e458 -> :sswitch_54
        0x4e4bc -> :sswitch_55
        0x4e520 -> :sswitch_56
        0x4e584 -> :sswitch_57
        0x4e5e8 -> :sswitch_58
        0x4e64c -> :sswitch_59
        0x4e6b0 -> :sswitch_5a
        0x4e714 -> :sswitch_5b
        0x50974 -> :sswitch_5c
        0x509d8 -> :sswitch_5d
        0x50a3c -> :sswitch_5e
        0x50aa0 -> :sswitch_5f
        0x50b04 -> :sswitch_60
        0x50b68 -> :sswitch_61
        0x50bcc -> :sswitch_62
        0x50c30 -> :sswitch_63
        0x50c94 -> :sswitch_64
        0x50cf8 -> :sswitch_65
        0x50d5c -> :sswitch_66
        0x53084 -> :sswitch_67
        0x530e8 -> :sswitch_68
        0x5314c -> :sswitch_69
        0x531b0 -> :sswitch_6a
        0x53214 -> :sswitch_6b
        0x53278 -> :sswitch_6c
        0x532dc -> :sswitch_6d
        0x53340 -> :sswitch_6e
        0x53408 -> :sswitch_6f
        0x5346c -> :sswitch_70
        0x534d0 -> :sswitch_71
        0x53534 -> :sswitch_72
        0x53598 -> :sswitch_73
        0x535fc -> :sswitch_74
        0x53660 -> :sswitch_75
        0x536c4 -> :sswitch_76
        0x53728 -> :sswitch_77
        0x55794 -> :sswitch_78
        0x557f8 -> :sswitch_79
        0x5585c -> :sswitch_7a
        0x558c0 -> :sswitch_7b
        0x55924 -> :sswitch_7c
        0x55988 -> :sswitch_7d
        0x559ec -> :sswitch_7e
        0x55a50 -> :sswitch_7f
        0x55ab4 -> :sswitch_80
        0x57ea4 -> :sswitch_81
        0x57f08 -> :sswitch_82
        0x57f6c -> :sswitch_83
        0x57fd0 -> :sswitch_84
        0x58034 -> :sswitch_85
        0x58098 -> :sswitch_86
        0x580fc -> :sswitch_87
        0x58160 -> :sswitch_88
        0x581c4 -> :sswitch_89
        0x58228 -> :sswitch_8a
        0x5828c -> :sswitch_8b
        0x5a5b4 -> :sswitch_8c
        0x5a618 -> :sswitch_8d
        0x5a67c -> :sswitch_8e
        0x5a6e0 -> :sswitch_8f
        0x5a744 -> :sswitch_90
        0x5a7a8 -> :sswitch_91
        0x5a80c -> :sswitch_92
        0x5a870 -> :sswitch_93
        0x5a8d4 -> :sswitch_94
        0x5a938 -> :sswitch_95
        0x5a99c -> :sswitch_96
        0x5aa00 -> :sswitch_97
        0x5aa64 -> :sswitch_98
        0x5aac8 -> :sswitch_99
        0x5ab2c -> :sswitch_9a
        0x5ab90 -> :sswitch_9b
        0x5abf4 -> :sswitch_9c
        0x641f4 -> :sswitch_9d
        0x64258 -> :sswitch_9e
        0x642bc -> :sswitch_9f
        0x64320 -> :sswitch_a0
        0x64384 -> :sswitch_a1
        0x643e8 -> :sswitch_a2
        0x6444c -> :sswitch_a3
        0x644b0 -> :sswitch_a4
        0x64514 -> :sswitch_a5
        0x64578 -> :sswitch_a6
        0x645dc -> :sswitch_a7
        0x64640 -> :sswitch_a8
        0x646a4 -> :sswitch_a9
        0x64708 -> :sswitch_aa
        0x6476c -> :sswitch_ab
        0x647d0 -> :sswitch_ac
        0x64834 -> :sswitch_ad
        0x64898 -> :sswitch_ae
        0x66904 -> :sswitch_af
        0x66968 -> :sswitch_b0
        0x669cc -> :sswitch_b1
        0x66a94 -> :sswitch_b2
        0x66af8 -> :sswitch_b3
        0x66b5c -> :sswitch_b4
        0x66bc0 -> :sswitch_b5
        0x66c24 -> :sswitch_b6
        0x66c88 -> :sswitch_b7
        0x66cec -> :sswitch_b8
        0x66d50 -> :sswitch_b9
        0x66db4 -> :sswitch_ba
        0x67390 -> :sswitch_bb
        0x68c2c -> :sswitch_bc
        0x68c90 -> :sswitch_bd
        0x68cf4 -> :sswitch_be
        0x68d58 -> :sswitch_bf
        0x69014 -> :sswitch_c0
        0x69078 -> :sswitch_c1
        0x690dc -> :sswitch_c2
        0x69140 -> :sswitch_c3
        0x691a4 -> :sswitch_c4
        0x69208 -> :sswitch_c5
        0x6926c -> :sswitch_c6
        0x692d0 -> :sswitch_c7
        0x69334 -> :sswitch_c8
        0x69398 -> :sswitch_c9
        0x693fc -> :sswitch_ca
        0x69460 -> :sswitch_cb
        0x694c4 -> :sswitch_cc
        0x69bcc -> :sswitch_cd
        0x6b724 -> :sswitch_ce
        0x6b788 -> :sswitch_cf
        0x6b7ec -> :sswitch_d0
        0x6b850 -> :sswitch_d1
        0x6b8b4 -> :sswitch_d2
        0x6b918 -> :sswitch_d3
        0x6b97c -> :sswitch_d4
        0x6b9e0 -> :sswitch_d5
        0x6ba44 -> :sswitch_d6
        0x6bb70 -> :sswitch_d7
        0x6bbd4 -> :sswitch_d8
        0x6bc38 -> :sswitch_d9
        0x6bc9c -> :sswitch_da
        0x6bd00 -> :sswitch_db
        0x6bd64 -> :sswitch_dc
        0x6bdc8 -> :sswitch_dd
        0x6be2c -> :sswitch_de
        0x6be90 -> :sswitch_df
        0x6caac -> :sswitch_e0
        0x6cb10 -> :sswitch_e1
        0x6cb74 -> :sswitch_e2
        0x6de34 -> :sswitch_e3
        0x6de98 -> :sswitch_e4
        0x6defc -> :sswitch_e5
        0x6df60 -> :sswitch_e6
        0x6dfc4 -> :sswitch_e7
        0x6e028 -> :sswitch_e8
        0x6e08c -> :sswitch_e9
        0x6e0f0 -> :sswitch_ea
        0x6e154 -> :sswitch_eb
        0x6e1b8 -> :sswitch_ec
        0x6e21c -> :sswitch_ed
        0x6e280 -> :sswitch_ee
        0x6e2e4 -> :sswitch_ef
        0x6e348 -> :sswitch_f0
        0x70544 -> :sswitch_f1
        0x705a8 -> :sswitch_f2
        0x7060c -> :sswitch_f3
        0x70670 -> :sswitch_f4
        0x706d4 -> :sswitch_f5
        0x70738 -> :sswitch_f6
        0x7079c -> :sswitch_f7
        0x70800 -> :sswitch_f8
        0x70864 -> :sswitch_f9
        0x708c8 -> :sswitch_fa
        0x7092c -> :sswitch_fb
        0x70990 -> :sswitch_fc
        0x709f4 -> :sswitch_fd
        0x70a58 -> :sswitch_fe
        0x70abc -> :sswitch_ff
        0x70b20 -> :sswitch_100
        0x70b84 -> :sswitch_101
        0x70be8 -> :sswitch_102
        0x70c4c -> :sswitch_103
        0x70cb0 -> :sswitch_104
        0x70d14 -> :sswitch_105
        0x7a120 -> :sswitch_106
        0x7a184 -> :sswitch_107
        0x7a1e8 -> :sswitch_108
        0x7c894 -> :sswitch_109
        0x7c95c -> :sswitch_10a
        0x7c9c0 -> :sswitch_10b
        0x7ca24 -> :sswitch_10c
        0x7ca88 -> :sswitch_10d
        0x7caec -> :sswitch_10e
        0x7cb50 -> :sswitch_10f
        0x7cbb4 -> :sswitch_110
        0x7cc18 -> :sswitch_111
        0x7cc7c -> :sswitch_112
        0x7cd44 -> :sswitch_113
        0x7cda8 -> :sswitch_114
        0x7ce0c -> :sswitch_115
        0x7ce70 -> :sswitch_116
        0x7ced4 -> :sswitch_117
        0x7cf38 -> :sswitch_118
        0x7cf9c -> :sswitch_119
        0x7d000 -> :sswitch_11a
        0x7d4b0 -> :sswitch_11b
        0x7d514 -> :sswitch_11c
        0x7d578 -> :sswitch_11d
        0x7efa4 -> :sswitch_11e
        0x7f008 -> :sswitch_11f
        0x7f06c -> :sswitch_120
        0x7f0d0 -> :sswitch_121
        0x7f7d8 -> :sswitch_122
        0x7f83c -> :sswitch_123
        0x7f8a0 -> :sswitch_124
        0x7f968 -> :sswitch_125
        0x7f9cc -> :sswitch_126
        0x816b4 -> :sswitch_127
        0x8177c -> :sswitch_128
        0x817e0 -> :sswitch_129
        0x81844 -> :sswitch_12a
        0x818a8 -> :sswitch_12b
        0x8190c -> :sswitch_12c
        0x81970 -> :sswitch_12d
        0x819d4 -> :sswitch_12e
        0x81f4c -> :sswitch_12f
        0x82014 -> :sswitch_130
        0x82078 -> :sswitch_131
        0x82140 -> :sswitch_132
        0x821a4 -> :sswitch_133
        0x8226c -> :sswitch_134
        0x82334 -> :sswitch_135
        0x82398 -> :sswitch_136
        0x83dc4 -> :sswitch_137
        0x84594 -> :sswitch_138
        0x845f8 -> :sswitch_139
        0x8465c -> :sswitch_13a
        0x846c0 -> :sswitch_13b
        0x84724 -> :sswitch_13c
        0x84788 -> :sswitch_13d
        0x94f34 -> :sswitch_13e
        0x94f98 -> :sswitch_13f
        0x94ffc -> :sswitch_140
        0x95060 -> :sswitch_141
        0x950c4 -> :sswitch_142
        0x95128 -> :sswitch_143
        0x9518c -> :sswitch_144
        0x951f0 -> :sswitch_145
        0x95254 -> :sswitch_146
        0x952b8 -> :sswitch_147
        0x97644 -> :sswitch_148
        0x976a8 -> :sswitch_149
        0x9770c -> :sswitch_14a
        0x97770 -> :sswitch_14b
        0x977d4 -> :sswitch_14c
        0x97838 -> :sswitch_14d
        0x9789c -> :sswitch_14e
        0x97900 -> :sswitch_14f
        0x97964 -> :sswitch_150
        0x979c8 -> :sswitch_151
        0x97a2c -> :sswitch_152
        0x97a90 -> :sswitch_153
        0x98134 -> :sswitch_154
        0x98198 -> :sswitch_155
        0x99d54 -> :sswitch_156
        0x9a524 -> :sswitch_157
        0x9a588 -> :sswitch_158
        0x9a5ec -> :sswitch_159
        0x9a6b4 -> :sswitch_15a
        0x9a718 -> :sswitch_15b
        0x9a77c -> :sswitch_15c
        0x9a7e0 -> :sswitch_15d
        0x9c464 -> :sswitch_15e
        0x9c4c8 -> :sswitch_15f
        0x9c52c -> :sswitch_160
        0x9c590 -> :sswitch_161
        0x9c5f4 -> :sswitch_162
        0x9eb74 -> :sswitch_163
        0x9ebd8 -> :sswitch_164
        0x9f344 -> :sswitch_165
        0x9f3a8 -> :sswitch_166
        0x9f40c -> :sswitch_167
        0x9f59c -> :sswitch_168
        0x9f600 -> :sswitch_169
        0x9f664 -> :sswitch_16a
        0x9f6c8 -> :sswitch_16b
        0x9f72c -> :sswitch_16c
        0x9f790 -> :sswitch_16d
        0x9fab0 -> :sswitch_16e
        0x9fb78 -> :sswitch_16f
        0x9fbdc -> :sswitch_170
        0xa0e9c -> :sswitch_171
        0xc5c10 -> :sswitch_172
        0xc8320 -> :sswitch_173
    .end sparse-switch
.end method

.method private a(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v2, "UTF-8"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v2, ""

    const-string v3, "opg"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "activitycode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "0012"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "activitycode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "processtime"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "processtime"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "actioncode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "0"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "actioncode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "svccont"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "info"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "syscode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/16 v2, 0x4c3c

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "syscode"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "userid"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Lcom/autonavi/xmgd/application/NaviApplication;->userid:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "userid"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "imei"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xmgd/utility/Tool;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "imei"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "city"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->h:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget v2, v2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->lAdminCode:I

    invoke-direct {p0, v2}, Lcom/autonavi/xmgd/navigator/DataFeedback;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "city"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "type"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->a:I

    if-ne v2, v6, :cond_4

    const-string v2, "0"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    :goto_0
    const-string v2, ""

    const-string v3, "type"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "errtype"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p5}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "errtype"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "name"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "name"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->a:I

    if-ne v2, v6, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    const-string p2, "\u65e0"

    :cond_1
    const-string v2, ""

    const-string v3, "address"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "address"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "tel"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "tel"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    const-string v2, ""

    const-string v3, "x"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->i:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "x"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "y"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "y"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->a:I

    if-ne v2, v7, :cond_3

    const-string v2, ""

    const-string v3, "roadlevel"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "05"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "roadlevel"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    const-string v2, ""

    const-string v3, "comment"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0, p4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "comment"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "softV"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/autonavi/xmgd/application/Resource;->getResource()Lcom/autonavi/xmgd/application/Resource;

    move-result-object v2

    iget-object v2, v2, Lcom/autonavi/xmgd/application/Resource;->mApkVersion:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "softV"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "engineV"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getEngineVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "engineV"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "dataV"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-static {}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/xm/navigation/engine/GDBL_EngineUnrelated;->getDataVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "dataV"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "OS"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "OS"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "model"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    const-string v2, ""

    const-string v3, "model"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "info"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "svccont"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "opg"

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    :try_start_1
    iget v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->a:I

    if-ne v2, v7, :cond_0

    const-string v2, "3"

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private a()V
    .locals 9

    const v8, 0x7f0c0103

    const v7, 0x7f03005b

    const v6, 0x7f03005a

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v0, 0x7f0c0057

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/autonavi/xmgd/view/GDTitle;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->f:Landroid/widget/Spinner;

    invoke-direct {p0, v1, v4}, Lcom/autonavi/xmgd/navigator/DataFeedback;->a(Landroid/widget/Spinner;I)I

    move-result v1

    iget v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->a:I

    if-ne v2, v5, :cond_1

    const v2, 0x7f0700fe

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->d:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->h:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szAddr:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DataFeedback;->a(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0c0051

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->d:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->e:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->h:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v2, v2, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szTel:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/autonavi/xmgd/navigator/DataFeedback;->a(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v0, 0x7f0c004f

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->e:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->e:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    invoke-virtual {p0, v8}, Lcom/autonavi/xmgd/navigator/DataFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->f:Landroid/widget/Spinner;

    const v0, 0x7f060010

    invoke-static {p0, v0, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->f:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->f:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->h:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v1, v1, Lcom/autonavi/xm/navigation/server/poi/GPoi;->szName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/DataFeedback;->a(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0c004d

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->c:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->c:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    new-instance v0, Lcom/autonavi/xmgd/navigator/g;

    invoke-direct {v0, p0}, Lcom/autonavi/xmgd/navigator/g;-><init>(Lcom/autonavi/xmgd/navigator/DataFeedback;)V

    iget-object v1, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->c:Landroid/widget/EditText;

    new-array v2, v5, [Landroid/text/InputFilter;

    aput-object v0, v2, v4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->b:Landroid/widget/EditText;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/autonavi/xmgd/navigator/DataFeedback;->a(Landroid/widget/EditText;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0c0090

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->b:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->b:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    const v0, 0x7f0c0093

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/autonavi/xmgd/navigator/h;

    invoke-direct {v1, p0}, Lcom/autonavi/xmgd/navigator/h;-><init>(Lcom/autonavi/xmgd/navigator/DataFeedback;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    iget v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->a:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const v2, 0x7f0700ff

    invoke-virtual {v0, v2}, Lcom/autonavi/xmgd/view/GDTitle;->setText(I)V

    invoke-virtual {p0, v8}, Lcom/autonavi/xmgd/navigator/DataFeedback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->f:Landroid/widget/Spinner;

    const v0, 0x7f060012

    invoke-static {p0, v0, v7}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->f:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto/16 :goto_0
.end method

.method private b()Z
    .locals 10

    const v8, 0x7f07010c

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, ""

    const-string v2, ""

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-static {p0, v8}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    move v0, v6

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v5, ""

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    invoke-static {p0, v8}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->f:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget v5, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->a:I

    if-ne v5, v7, :cond_3

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->e:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f060011

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v0

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    :goto_1
    const-string v5, "\n"

    const-string v8, ""

    invoke-virtual {v2, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "\n"

    const-string v8, ""

    invoke-virtual {v3, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\n"

    const-string v8, ""

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/autonavi/xmgd/navigator/DataFeedback;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_2

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DataFeedback]  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    new-array v3, v7, [I

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const-string v1, "http://us.autonavi.com/data"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/16 v4, 0x7dd

    const/16 v5, 0xa

    invoke-virtual/range {v0 .. v5}, Lcom/autonavi/xmgd/c/a;->a(Ljava/lang/String;[B[III)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v6

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f060013

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    aget-object v0, v5, v0

    move-object v9, v2

    move-object v2, v3

    move-object v3, v9

    goto :goto_1

    :cond_4
    aget v0, v3, v6

    iput v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->g:I

    move v0, v7

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/autonavi/xmgd/navigator/DataFeedback;)Z
    .locals 1

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/autonavi/xmgd/navigator/DataFeedback;)I
    .locals 1

    iget v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->g:I

    return v0
.end method

.method private c()V
    .locals 3

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/autonavi/xmgd/controls/s;->a()Lcom/autonavi/xmgd/controls/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/s;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const-string v0, "\u4ece\u8fd4\u56de\u6808\u4e2d\u53d6\u51fa\u7a7a\u7c7b\u540d"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/DataFeedback;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const v3, 0xf4240

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "feedback_type"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->a:I

    invoke-static {}, Lcom/autonavi/xmgd/controls/ab;->a()Lcom/autonavi/xmgd/controls/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/xmgd/controls/ab;->h()Lcom/autonavi/xmgd/e/k;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->h:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->h:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u70b9\u65e0\u6570\u636e\uff0c\u65e0\u6cd5\u8fdb\u884c\u53cd\u9988"

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->h:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->x:I

    div-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->h:Lcom/autonavi/xm/navigation/server/poi/GPoi;

    iget-object v0, v0, Lcom/autonavi/xm/navigation/server/poi/GPoi;->Coord:Lcom/autonavi/xm/navigation/server/GCoord;

    iget v0, v0, Lcom/autonavi/xm/navigation/server/GCoord;->y:I

    div-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->j:Ljava/lang/String;

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    const/16 v1, 0x7dd

    invoke-virtual {v0, p0, v1}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/e;I)Z

    iget v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->a:I

    if-ne v0, v2, :cond_4

    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->setContentView(I)V

    :goto_1
    if-eqz p1, :cond_2

    const-string v0, "mUpRequestId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->g:I

    :cond_2
    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_3

    const-string v1, "mUpRequestId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->g:I

    :cond_3
    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->a()V

    goto :goto_0

    :cond_4
    const v0, 0x7f030048

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->setContentView(I)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Lcom/autonavi/xmgd/utility/CustomDialog;

    const/4 v1, 0x2

    new-instance v2, Lcom/autonavi/xmgd/navigator/i;

    invoke-direct {v2, p0}, Lcom/autonavi/xmgd/navigator/i;-><init>(Lcom/autonavi/xmgd/navigator/DataFeedback;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/autonavi/xmgd/utility/CustomDialog;-><init>(Landroid/content/Context;ILcom/autonavi/xmgd/utility/CustomDialog$ICustomDialogInterface;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setTitleVisibility(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setButtonVisibility(Z)V

    invoke-virtual {v0, v3}, Lcom/autonavi/xmgd/utility/CustomDialog;->setSignBtnSingleOrDouble(Z)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070116

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setProgressBarContent(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f070017

    invoke-static {v1, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/CustomDialog;->setBtnMidText(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/autonavi/xmgd/controls/GDActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->isNeedFinishAndReboot()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/e;)Z

    invoke-static {}, Lcom/autonavi/xmgd/naviservice/q;->a()Lcom/autonavi/xmgd/naviservice/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/naviservice/q;->a(Lcom/autonavi/xmgd/controls/r;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onHttpException(Ljava/lang/Exception;IILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700de

    invoke-static {p0, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[30]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onHttpRequestByteReceived(III)V
    .locals 0

    return-void
.end method

.method public onHttpRequestFinish([BIII)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->dismissDialog(I)V

    sget-boolean v0, Lcom/autonavi/xmgd/utility/Tool;->LOG:Z

    if-eqz v0, :cond_0

    const-string v0, "autonavi60"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DataFeedback]  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->LOG_I(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p1}, Lcom/autonavi/xmgd/utility/Tool;->getString([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "GBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "gbk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :try_start_0
    const-string v1, "GBK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    :goto_0
    iget v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->g:I

    if-ne p3, v0, :cond_2

    const/16 v0, -0x7c1

    iput v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->g:I

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_1
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    const-string v1, "rsptype"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    const v1, 0x7f070118

    invoke-static {p0, v1}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    goto :goto_0

    :cond_4
    :try_start_2
    const-string v1, "rspcode"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070114

    invoke-static {p0, v3}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onHttpTaskCanceled([BIII)V
    .locals 0

    return-void
.end method

.method public onHttpTimeOut(Ljava/lang/String;II)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->dismissDialog(I)V

    invoke-static {}, Lcom/autonavi/xmgd/utility/Tool;->getTool()Lcom/autonavi/xmgd/utility/Tool;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0700e3

    invoke-static {p0, v2}, Lcom/autonavi/xmgd/utility/Tool;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[55]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/xmgd/utility/Tool;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->k:Z

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->k:Z

    invoke-static {}, Lcom/autonavi/xmgd/c/a;->a()Lcom/autonavi/xmgd/c/a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/autonavi/xmgd/c/a;->a(Lcom/autonavi/xmgd/c/e;)Z

    invoke-direct {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->c()V

    invoke-virtual {p0}, Lcom/autonavi/xmgd/navigator/DataFeedback;->finish()V

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/autonavi/xmgd/controls/GDActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_0

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/DataFeedback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v1, Landroid/view/KeyEvent;

    invoke-direct {v1, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p0, v1}, Lcom/autonavi/xmgd/navigator/DataFeedback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mUpRequestId"

    iget v2, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->g:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "mUpRequestId"

    iget v1, p0, Lcom/autonavi/xmgd/navigator/DataFeedback;->g:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-super {p0, p1}, Lcom/autonavi/xmgd/controls/GDActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
