.class public Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;
.super Landroid/app/Activity;
.source "NetworkInfoInfomation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;
    }
.end annotation


# static fields
.field private static final FLAG_DATA_BIT:I = 0x8

.field private static final FLAG_OFFSET_BIT:I = 0x8

.field private static final FLAG_OR_DATA:I = 0xf7

.field private static final MSG_NW_INFO:I = 0x1

.field private static final MSG_NW_INFO_CLOSE:I = 0x4

.field private static final MSG_NW_INFO_OPEN:I = 0x3

.field private static final MSG_NW_INFO_URC:I = 0x2

.field private static final MSG_UPDATE_UI:I = 0x5

.field private static final TAG:Ljava/lang/String; = "NetworkInfo"

.field private static final TOTAL_TIMER:I = 0x3e8


# instance fields
.field private mATCmdHander:Landroid/os/Handler;

.field private mCurrentItem:I

.field private mFlag:I

.field private mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

.field private mInfo:Landroid/widget/TextView;

.field private mItem:[I

.field private mItemCount:I

.field private mNetworkInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;",
            ">;"
        }
    .end annotation
.end field

.field private mPageDown:Landroid/widget/Button;

.field private mPageUp:Landroid/widget/Button;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mSimType:I

.field private mTimer:Ljava/util/Timer;

.field private mToast:Landroid/widget/Toast;

.field private final mUiHandler:Landroid/os/Handler;

.field private final mUrcHandler:Landroid/os/Handler;

.field private mUrcParser:Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 77
    iput-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mToast:Landroid/widget/Toast;

    .line 79
    iput v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItemCount:I

    .line 80
    iput v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mCurrentItem:I

    .line 83
    new-instance v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;

    invoke-direct {v0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mUrcParser:Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;

    .line 84
    iput-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 85
    iput-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 86
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mTimer:Ljava/util/Timer;

    .line 87
    iput v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I

    .line 101
    new-instance v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$1;-><init>(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mNetworkInfo:Ljava/util/HashMap;

    .line 255
    new-instance v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$3;-><init>(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mATCmdHander:Landroid/os/Handler;

    .line 286
    new-instance v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$4;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$4;-><init>(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mUrcHandler:Landroid/os/Handler;

    .line 320
    new-instance v0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$5;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$5;-><init>(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mUiHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItemCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItem:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;[Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->sendATCommand([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mNetworkInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mCurrentItem:I

    return v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->showNetworkInfo()V

    return-void
.end method

.method private registerNetwork()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 223
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gemini/GeminiPhone;

    iput-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    .line 224
    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mUrcHandler:Landroid/os/Handler;

    const/4 v3, 0x0

    iget v4, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mSimType:I

    invoke-virtual {v1, v2, v6, v3, v4}, Lcom/android/internal/telephony/gemini/GeminiPhone;->registerForNetworkInfoGemini(Landroid/os/Handler;ILjava/lang/Object;I)V

    .line 227
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AT+EINFO?"

    aput-object v2, v0, v1

    const-string v1, "+EINFO"

    aput-object v1, v0, v5

    .line 228
    .local v0, atCommand:[Ljava/lang/String;
    invoke-direct {p0, v0, v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->sendATCommand([Ljava/lang/String;I)V

    .line 229
    return-void
.end method

.method private sendATCommand([Ljava/lang/String;I)V
    .locals 3
    .parameter "atCommand"
    .parameter "msg"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mATCmdHander:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mSimType:I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/telephony/gemini/GeminiPhone;->invokeOemRilRequestStringsGemini([Ljava/lang/String;Landroid/os/Message;I)V

    .line 253
    return-void
.end method

.method private showNetworkInfo()V
    .locals 7

    .prologue
    .line 211
    iget-object v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItem:[I

    iget v4, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mCurrentItem:I

    aget v2, v3, v4

    .line 212
    .local v2, type:I
    iget-object v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mNetworkInfo:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    iget-object v1, v3, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;->name:Ljava/lang/String;

    .line 213
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mNetworkInfo:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    iget-object v0, v3, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;->info:Ljava/lang/String;

    .line 214
    .local v0, info:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mInfo:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mCurrentItem:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItemCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mUrcParser:Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;

    iget v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mSimType:I

    invoke-virtual {v5, v2, v0, v6}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoUrcParser;->parseInfo(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    return-void
.end method

.method private unregisterNetwork()V
    .locals 4

    .prologue
    .line 235
    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mGeminiPhone:Lcom/android/internal/telephony/gemini/GeminiPhone;

    iget-object v2, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mUrcHandler:Landroid/os/Handler;

    iget v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mSimType:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/gemini/GeminiPhone;->unregisterForNetworkInfoGemini(Landroid/os/Handler;I)V

    .line 238
    iget v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I

    and-int/lit16 v1, v1, 0xf7

    iput v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I

    .line 239
    const-string v1, "NetworkInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The close flag is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 241
    .local v0, atCloseCmd:[Ljava/lang/String;
    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AT+EINFO="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 242
    const/4 v1, 0x1

    const-string v2, ""

    aput-object v2, v0, v1

    .line 243
    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->sendATCommand([Ljava/lang/String;I)V

    .line 244
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mPageUp:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 190
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mCurrentItem:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItemCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItemCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mCurrentItem:I

    .line 191
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->updateUI()V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mPageDown:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 193
    iget v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mCurrentItem:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItemCount:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mCurrentItem:I

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->updateUI()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 137
    const v5, 0x7f030065

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 140
    const/16 v5, 0xbe

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItem:[I

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 142
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "mSimType"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mSimType:I

    .line 143
    const-string v5, "mChecked"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 144
    .local v0, checked:[I
    if-eqz v0, :cond_1

    .line 145
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_1

    .line 146
    const/4 v5, 0x1

    aget v6, v0, v1

    if-ne v5, v6, :cond_0

    .line 147
    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItem:[I

    iget v6, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItemCount:I

    aput v1, v5, v6

    .line 148
    iget v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItemCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mItemCount:I

    .line 145
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1           #i:I
    :cond_1
    iget v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mSimType:I

    invoke-static {v5}, Lcom/mediatek/engineermode/networkinfo/NetworkInfo;->getModemType(I)I

    move-result v4

    .line 154
    .local v4, modemType:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 155
    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mNetworkInfo:Ljava/util/HashMap;

    const/16 v6, 0x4b

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;

    .line 156
    .local v3, item:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;
    const/16 v5, 0x60

    iput v5, v3, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;->size:I

    .line 159
    .end local v3           #item:Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$NetworkInfoItem;
    :cond_2
    const v5, 0x7f0b0360

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mInfo:Landroid/widget/TextView;

    .line 160
    const v5, 0x7f0b035e

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mPageUp:Landroid/widget/Button;

    .line 161
    const v5, 0x7f0b035f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mPageDown:Landroid/widget/Button;

    .line 162
    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mPageUp:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v5, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mPageDown:Landroid/widget/Button;

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    invoke-direct {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->registerNetwork()V

    .line 165
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->unregisterNetwork()V

    .line 182
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 183
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->updateUI()V

    .line 171
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 176
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 177
    return-void
.end method

.method public updateUI()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x3e8

    .line 199
    invoke-direct {p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->showNetworkInfo()V

    .line 200
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 201
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mTimer:Ljava/util/Timer;

    .line 202
    iget-object v0, p0, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation$2;-><init>(Lcom/mediatek/engineermode/networkinfo/NetworkInfoInfomation;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 208
    return-void
.end method
