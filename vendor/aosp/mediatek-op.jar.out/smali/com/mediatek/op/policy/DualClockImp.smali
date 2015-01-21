.class public Lcom/mediatek/op/policy/DualClockImp;
.super Lcom/mediatek/op/policy/DefaultDualClock;
.source "DualClockImp.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final ROAMING_PROPERTY:Ljava/lang/String; = "com.mediatek.op.policy.dualclock.property"

.field private static final ROAMING_PROPERTY_NAME:Ljava/lang/String; = "dualclockroaming"

.field private static final ROAMING_UPDATE:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "DualClockImp"

.field private static mPropertyRoaming:Z


# instance fields
.field private mContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDomesticClockView:Landroid/view/View;

.field private mDualClockPropertyBroadcastReceiver:Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/op/policy/DualClockImp;->mPropertyRoaming:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mediatek/op/policy/DefaultDualClock;-><init>()V

    .line 354
    new-instance v0, Lcom/mediatek/op/policy/DualClockImp$3;

    invoke-direct {v0, p0}, Lcom/mediatek/op/policy/DualClockImp$3;-><init>(Lcom/mediatek/op/policy/DualClockImp;)V

    iput-object v0, p0, Lcom/mediatek/op/policy/DualClockImp;->mHandler:Landroid/os/Handler;

    .line 57
    const-string v0, "DualClockImp"

    const-string v1, "DualClockImp()"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/op/policy/DualClockImp;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mediatek/op/policy/DualClockImp;->isRoaming()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/op/policy/DualClockImp;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/op/policy/DualClockImp;->udpateDualClock(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/op/policy/DualClockImp;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mediatek/op/policy/DualClockImp;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/op/policy/DualClockImp;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/mediatek/op/policy/DualClockImp;->setPropertyRoaming(Z)V

    return-void
.end method

.method private adjustClockToNonRoaming(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5
    .parameter "clockText"
    .parameter "ampmText"

    .prologue
    const/4 v4, 0x0

    .line 256
    const-string v2, "DualClockImp"

    const-string v3, "adjustClockToNonRoaming"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mDomesticClockView:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d001d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 260
    .local v1, originalClockTextSize:F
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d001e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 261
    .local v0, originalAmPmSize:F
    invoke-virtual {p1, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 262
    invoke-virtual {p2, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 263
    const-string v2, "DualClockImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustClockToNonRoaming, originalClockTextSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " originalAmPmSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method

.method private adjustClockToRoaming(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5
    .parameter "clockText"
    .parameter "ampmText"

    .prologue
    const/4 v4, 0x0

    .line 240
    const-string v2, "DualClockImp"

    const-string v3, "adjustClockToRoaming"

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mDomesticClockView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 243
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 244
    .local v1, dualClockTextSize:F
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20d0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 245
    .local v0, dualAmPmSize:F
    invoke-virtual {p1, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 246
    invoke-virtual {p2, v4, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 247
    return-void
.end method

.method private adjustMessageArea(Z)V
    .locals 5
    .parameter "bRoaming"

    .prologue
    .line 222
    const-string v2, "DualClockImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjustMessageArea, bRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mContainer:Landroid/view/View;

    const v3, 0x2100050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 224
    .local v0, keyguardStatusArea:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 225
    .local v1, ksaLayoutParams:Landroid/widget/LinearLayout$LayoutParams;
    if-eqz p1, :cond_0

    .line 226
    const/4 v2, 0x3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 230
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    return-void

    .line 228
    :cond_0
    const/4 v2, 0x5

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    goto :goto_0
.end method

.method private getPropertyRoaming()Z
    .locals 1

    .prologue
    .line 348
    sget-boolean v0, Lcom/mediatek/op/policy/DualClockImp;->mPropertyRoaming:Z

    return v0
.end method

.method public static final isGemini()Z
    .locals 2

    .prologue
    .line 284
    const-string v0, "DualClockImp"

    const-string v1, "isGemini = true"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v0, 0x1

    return v0
.end method

.method private isRoaming()Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 180
    const-string v2, "DualClockImp"

    const-string v5, "isRoaming"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, bRoaming:Z
    invoke-static {}, Lcom/mediatek/op/policy/DualClockImp;->isGemini()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 183
    invoke-virtual {p0}, Lcom/mediatek/op/policy/DualClockImp;->getExternalModemSlot()I

    move-result v1

    .line 184
    .local v1, masterCardSlot:I
    const-string v2, "DualClockImp"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRoaming, isGemini() true, masterCardSlot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 186
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->isNetworkRoamingGemini(I)Z

    move-result v0

    .line 192
    .end local v1           #masterCardSlot:I
    :cond_0
    :goto_0
    const-string v5, "DualClockImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isRoaming, "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/mediatek/op/policy/DualClockImp;->getPropertyRoaming()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    move v2, v4

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/mediatek/op/policy/DualClockImp;->getPropertyRoaming()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    return v3

    .line 189
    :cond_4
    const-string v2, "DualClockImp"

    const-string v5, "isRoaming, isGemini() false"

    invoke-static {v2, v5}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    goto :goto_0

    :cond_5
    move v2, v3

    .line 192
    goto :goto_1
.end method

.method private setPropertyRoaming(Z)V
    .locals 0
    .parameter "bRoaming"

    .prologue
    .line 338
    sput-boolean p1, Lcom/mediatek/op/policy/DualClockImp;->mPropertyRoaming:Z

    .line 339
    return-void
.end method

.method private udpateDualClock(Z)V
    .locals 5
    .parameter "bRoaming"

    .prologue
    .line 202
    const-string v2, "DualClockImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "udpateDualClock, bRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mDomesticClockView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 204
    const-string v2, "DualClockImp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "udpateDualClock, bRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDomesticClockView != null "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mContainer:Landroid/view/View;

    const v3, 0x2100057

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 206
    .local v1, clockText:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mContainer:Landroid/view/View;

    const v3, 0x2100058

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 207
    .local v0, ampmText:Landroid/widget/TextView;
    if-eqz p1, :cond_1

    .line 208
    invoke-direct {p0, v1, v0}, Lcom/mediatek/op/policy/DualClockImp;->adjustClockToRoaming(Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 212
    :goto_0
    invoke-direct {p0, p1}, Lcom/mediatek/op/policy/DualClockImp;->adjustMessageArea(Z)V

    .line 214
    .end local v0           #ampmText:Landroid/widget/TextView;
    .end local v1           #clockText:Landroid/widget/TextView;
    :cond_0
    return-void

    .line 210
    .restart local v0       #ampmText:Landroid/widget/TextView;
    .restart local v1       #clockText:Landroid/widget/TextView;
    :cond_1
    invoke-direct {p0, v1, v0}, Lcom/mediatek/op/policy/DualClockImp;->adjustClockToNonRoaming(Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_0
.end method


# virtual methods
.method public createClockView(Landroid/content/Context;Landroid/view/View;)Landroid/view/View;
    .locals 6
    .parameter "context"
    .parameter "container"

    .prologue
    .line 65
    const-string v3, "DualClockImp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createClockView context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " container = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object p2, p0, Lcom/mediatek/op/policy/DualClockImp;->mContainer:Landroid/view/View;

    .line 67
    iput-object p1, p0, Lcom/mediatek/op/policy/DualClockImp;->mContext:Landroid/content/Context;

    .line 68
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    iput-object v3, p0, Lcom/mediatek/op/policy/DualClockImp;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 69
    const-string v3, "DualClockImp"

    const-string v4, "createClockView, start create and add domestic view"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    const v3, 0x2100055

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 71
    .local v2, parent:Landroid/widget/LinearLayout;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 73
    .local v1, inflater:Landroid/view/LayoutInflater;
    const-string v3, "DualClockImp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createClockView parent = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const v3, 0x207000e

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, dualClockView:Landroid/view/View;
    const v3, 0x2100028

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mediatek/op/policy/DualClockImp;->mDomesticClockView:Landroid/view/View;

    .line 78
    const-string v3, "DualClockImp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createClockView context = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " container = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " return mDomesticClockView = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/op/policy/DualClockImp;->mDomesticClockView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-direct {p0}, Lcom/mediatek/op/policy/DualClockImp;->isRoaming()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/op/policy/DualClockImp;->udpateDualClock(Z)V

    .line 83
    invoke-virtual {p0, p1}, Lcom/mediatek/op/policy/DualClockImp;->initPhoneStateListener(Landroid/content/Context;)V

    .line 85
    invoke-virtual {p0}, Lcom/mediatek/op/policy/DualClockImp;->registerPropertyBroadcast()V

    .line 87
    iget-object v3, p0, Lcom/mediatek/op/policy/DualClockImp;->mDomesticClockView:Landroid/view/View;

    return-object v3
.end method

.method public getExternalModemSlot()I
    .locals 4

    .prologue
    .line 272
    const/4 v0, 0x0

    .line 273
    .local v0, slot:I
    const-string v1, "ril.external.md"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 274
    const-string v1, "DualClockImp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExternalModemSlot slot="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    add-int/lit8 v1, v0, -0x1

    return v1
.end method

.method public getStatusViewLayout()I
    .locals 2

    .prologue
    .line 95
    const-string v0, "DualClockImp"

    const-string v1, "getStatusViewLayout layout res id = 34013205"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const v0, 0x2070015

    return v0
.end method

.method public initPhoneStateListener(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 103
    new-instance v0, Lcom/mediatek/op/policy/DualClockImp$1;

    invoke-direct {v0, p0}, Lcom/mediatek/op/policy/DualClockImp$1;-><init>(Lcom/mediatek/op/policy/DualClockImp;)V

    iput-object v0, p0, Lcom/mediatek/op/policy/DualClockImp;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 116
    new-instance v0, Lcom/mediatek/op/policy/DualClockImp$2;

    invoke-direct {v0, p0}, Lcom/mediatek/op/policy/DualClockImp$2;-><init>(Lcom/mediatek/op/policy/DualClockImp;)V

    iput-object v0, p0, Lcom/mediatek/op/policy/DualClockImp;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/op/policy/DualClockImp;->listenPhoneEvent(I)V

    .line 132
    return-void
.end method

.method public listenPhoneEvent(I)V
    .locals 8
    .parameter "phoneEvent"

    .prologue
    .line 150
    const-string v5, "DualClockImp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listenPhoneEvent, phoneEvent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mPhoneStateListener = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/op/policy/DualClockImp;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mPhoneStateListenerGemini = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/op/policy/DualClockImp;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v5, p0, Lcom/mediatek/op/policy/DualClockImp;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v5, :cond_0

    .line 172
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-static {}, Lcom/mediatek/op/policy/DualClockImp;->isGemini()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 155
    const-string v5, "DualClockImp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listenPhoneEvent, phoneEvent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isGemini() true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 158
    .local v2, t:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 159
    .local v1, notifyNow:Ljava/lang/Boolean;
    const-string v5, "telephony.registry"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v3

    .line 160
    .local v3, tr1:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v5, "DualClockImp"

    iget-object v6, p0, Lcom/mediatek/op/policy/DualClockImp;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v3, v5, v6, p1, v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V

    .line 161
    const-string v5, "telephony.registry2"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v4

    .line 162
    .local v4, tr2:Lcom/android/internal/telephony/ITelephonyRegistry;
    const-string v5, "DualClockImp"

    iget-object v6, p0, Lcom/mediatek/op/policy/DualClockImp;->mPhoneStateListenerGemini:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v6}, Landroid/telephony/PhoneStateListener;->getCallback()Lcom/android/internal/telephony/IPhoneStateListener;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-interface {v4, v5, v6, p1, v7}, Lcom/android/internal/telephony/ITelephonyRegistry;->listen(Ljava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 163
    .end local v1           #notifyNow:Ljava/lang/Boolean;
    .end local v2           #t:Lcom/android/internal/telephony/ITelephony;
    .end local v3           #tr1:Lcom/android/internal/telephony/ITelephonyRegistry;
    .end local v4           #tr2:Lcom/android/internal/telephony/ITelephonyRegistry;
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "DualClockImp"

    const-string v6, "Fail to listen GEMINI state"

    invoke-static {v5, v6, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 158
    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #t:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 165
    .end local v2           #t:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v5, "DualClockImp"

    const-string v6, "The registry is null"

    invoke-static {v5, v6, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 169
    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_2
    const-string v5, "DualClockImp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "listenPhoneEvent, phoneEvent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isGemini() false"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v5, p0, Lcom/mediatek/op/policy/DualClockImp;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/mediatek/op/policy/DualClockImp;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v6, p1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto/16 :goto_0
.end method

.method public registerPropertyBroadcast()V
    .locals 3

    .prologue
    .line 293
    const-string v1, "DualClockImp"

    const-string v2, "registerPropertyBroadcast"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v1, Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;-><init>(Lcom/mediatek/op/policy/DualClockImp;Lcom/mediatek/op/policy/DualClockImp$1;)V

    iput-object v1, p0, Lcom/mediatek/op/policy/DualClockImp;->mDualClockPropertyBroadcastReceiver:Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;

    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.mediatek.op.policy.dualclock.property"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 296
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/mediatek/op/policy/DualClockImp;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/op/policy/DualClockImp;->mDualClockPropertyBroadcastReceiver:Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 297
    return-void
.end method

.method public resetPhonelistener()V
    .locals 2

    .prologue
    .line 139
    const-string v0, "DualClockImp"

    const-string v1, "resetPhonelistener"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/mediatek/op/policy/DualClockImp;->unRegisterPropertyBroadcast()V

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/op/policy/DualClockImp;->listenPhoneEvent(I)V

    .line 142
    return-void
.end method

.method public unRegisterPropertyBroadcast()V
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/mediatek/op/policy/DualClockImp;->mDualClockPropertyBroadcastReceiver:Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 305
    const-string v0, "DualClockImp"

    const-string v1, "unRegisterPropertyBroadcast"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v0, p0, Lcom/mediatek/op/policy/DualClockImp;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/op/policy/DualClockImp;->mDualClockPropertyBroadcastReceiver:Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/op/policy/DualClockImp;->mDualClockPropertyBroadcastReceiver:Lcom/mediatek/op/policy/DualClockImp$DualClockPropertyBroadcastReceiver;

    .line 309
    :cond_0
    return-void
.end method

.method public updateClockLayout()V
    .locals 8

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/mediatek/op/policy/DualClockImp;->isRoaming()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 373
    iget-object v5, p0, Lcom/mediatek/op/policy/DualClockImp;->mContainer:Landroid/view/View;

    const v6, 0x2100057

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 374
    .local v2, phoneSettingsClockTimeText:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v6

    sub-int v1, v5, v6

    .line 376
    .local v1, phoneSettingsClockTimeOffset:I
    iget-object v5, p0, Lcom/mediatek/op/policy/DualClockImp;->mContainer:Landroid/view/View;

    const v6, 0x2100056

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 378
    .local v0, phoneSettingClock:Landroid/view/View;
    const-string v5, "DualClockImp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateClockLayout, clockText.getBottom() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/TextView;->getBottom()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " clockText.getBaseline() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " phoneSettingsClockTimeOffset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " phoneSettingClock.getBottom() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDomesticClockView.getBottom() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/mediatek/op/policy/DualClockImp;->mDomesticClockView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget-object v6, p0, Lcom/mediatek/op/policy/DualClockImp;->mDomesticClockView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 385
    iget-object v5, p0, Lcom/mediatek/op/policy/DualClockImp;->mContainer:Landroid/view/View;

    const v6, 0x210002e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 386
    .local v3, weekdayClockTextDomestic:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v6

    sub-int v4, v5, v6

    .line 389
    .local v4, weekdayClockTextDomesticOffset:I
    iget-object v5, p0, Lcom/mediatek/op/policy/DualClockImp;->mDomesticClockView:Landroid/view/View;

    sub-int v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 392
    .end local v0           #phoneSettingClock:Landroid/view/View;
    .end local v1           #phoneSettingsClockTimeOffset:I
    .end local v2           #phoneSettingsClockTimeText:Landroid/widget/TextView;
    .end local v3           #weekdayClockTextDomestic:Landroid/widget/TextView;
    .end local v4           #weekdayClockTextDomesticOffset:I
    :cond_0
    return-void
.end method
