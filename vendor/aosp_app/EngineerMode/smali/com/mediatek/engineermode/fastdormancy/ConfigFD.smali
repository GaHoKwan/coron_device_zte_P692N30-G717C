.class public Lcom/mediatek/engineermode/fastdormancy/ConfigFD;
.super Landroid/app/Activity;
.source "ConfigFD.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;
    }
.end annotation


# static fields
.field private static final EVENT_FD_QUERY:I = 0x0

.field private static final EVENT_FD_SET:I = 0x1

.field private static final FD_LEGACY_OFF:I = 0x400000

.field private static final FD_OFF:I = 0x800000

.field private static final FD_ON:I = 0x3fffff

.field private static final FORE_CMD:Ljava/lang/String; = "+EPCT:"

.field private static final QUERY_FD:[Ljava/lang/String; = null

.field private static final SET_FAILED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EM_FD"


# instance fields
.field private mFdValue:I

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mResponseHander:Landroid/os/Handler;

.field private mReturnData:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AT+EPCT?"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "+EPCT"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->QUERY_FD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I

    .line 195
    new-instance v0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$1;-><init>(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mResponseHander:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mRadioGroup:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mResponseHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->parseData([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->updateUI()V

    return-void
.end method

.method private init()V
    .locals 4

    .prologue
    .line 101
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 102
    iget-object v0, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mPhone:Lcom/android/internal/telephony/Phone;

    sget-object v1, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->QUERY_FD:[Ljava/lang/String;

    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mResponseHander:Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 103
    return-void
.end method

.method private parseData([Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    const-string v1, "EM_FD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseData() content[0]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    aget-object v1, p1, v4

    if-eqz v1, :cond_0

    aget-object v1, p1, v4

    const-string v2, "+EPCT:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    aget-object v1, p1, v4

    const-string v2, "+EPCT:"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 115
    const-string v1, "EM_FD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    const-string v1, "EM_FD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    aget-object v1, p1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 118
    aget-object v1, p1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-object v0, p1

    .line 121
    .end local p1
    .local v0, data:[Ljava/lang/String;
    :goto_0
    return-object v0

    .end local v0           #data:[Ljava/lang/String;
    .restart local p1
    :cond_0
    move-object v0, p1

    .end local p1
    .restart local v0       #data:[Ljava/lang/String;
    goto :goto_0
.end method

.method private updateUI()V
    .locals 7

    .prologue
    const/high16 v6, 0x80

    const/high16 v5, 0x40

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 125
    iget-object v4, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mReturnData:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-nez v4, :cond_1

    .line 126
    :cond_0
    const-string v2, "EM_FD"

    const-string v3, "returnData is null "

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void

    .line 130
    :cond_1
    iget v4, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_2

    move v1, v2

    .line 131
    .local v1, isOff:Z
    :goto_1
    iget v4, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_3

    move v0, v2

    .line 132
    .local v0, isLegacyOff:Z
    :goto_2
    const-string v2, "EM_FD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mFdValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    if-eqz v1, :cond_4

    .line 134
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0185

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 135
    const-string v2, "EM_FD"

    const-string v3, "check off"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #isLegacyOff:Z
    .end local v1           #isOff:Z
    :cond_2
    move v1, v3

    .line 130
    goto :goto_1

    .restart local v1       #isOff:Z
    :cond_3
    move v0, v3

    .line 131
    goto :goto_2

    .line 136
    .restart local v0       #isLegacyOff:Z
    :cond_4
    if-eqz v0, :cond_5

    .line 137
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0186

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 138
    const-string v2, "EM_FD"

    const-string v3, "check legacy off"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_5
    iget-object v2, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0b0184

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    .line 141
    const-string v2, "EM_FD"

    const-string v3, "check on"

    invoke-static {v2, v3}, Lcom/mediatek/engineermode/Elog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    const v1, 0x7f03003a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 88
    const v1, 0x7f0b0183

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    iput-object v1, p0, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 89
    const v1, 0x7f0b0187

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 90
    .local v0, setButton:Landroid/widget/Button;
    new-instance v1, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD$ButtonClickListener;-><init>(Lcom/mediatek/engineermode/fastdormancy/ConfigFD;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->init()V

    .line 92
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 247
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 248
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 255
    :goto_0
    return-object v1

    .line 250
    :pswitch_0
    const-string v2, "SCRI/FD Set"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 251
    const-string v2, "SCRI/FD Set failed."

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 252
    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 253
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    goto :goto_0

    .line 248
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 97
    invoke-direct {p0}, Lcom/mediatek/engineermode/fastdormancy/ConfigFD;->updateUI()V

    .line 98
    return-void
.end method
