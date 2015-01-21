.class public Lcom/mediatek/connectivity/CdsUtilityActivity;
.super Landroid/app/Activity;
.source "CdsUtilityActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/connectivity/CdsUtilityActivity$DnsTask;,
        Lcom/mediatek/connectivity/CdsUtilityActivity$HttpTask;,
        Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;
    }
.end annotation


# static fields
.field private static final BASE:I = 0x1001

.field private static final CMDTYPESTRING:[Ljava/lang/String; = null

.field private static final DNS:I = 0x1004

.field private static final HTTPRESPONSNE:I = 0x1005

.field private static final HTTPSTRING:Ljava/lang/String; = "http://"

.field private static final MSG_UPDATE_UI:I = 0x3001

.field private static final PING:I = 0x1002

.field private static final PINGSTRING:Ljava/lang/String; = "ping -c 5 www.google.com"

.field private static final PINGV6:I = 0x1003

.field private static final PINGV6STRING:Ljava/lang/String; = "ping6 -c 5 www.google.com"

.field private static final RUN:I = 0x1001

.field private static final SYSPROP_LIST:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "CdsUtilityActivity"

.field private static final WEBSITES:[Ljava/lang/String;


# instance fields
.field private mAutoCompleteAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCmdLineList:Landroid/widget/AutoCompleteTextView;

.field private mCmdOption:I

.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/ProgressDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mOutputScreen:Landroid/widget/TextView;

.field private mProgressThread:Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;

.field private mSysPropName:Landroid/widget/TextView;

.field private mSysPropValue:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 105
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "netstat"

    aput-object v1, v0, v3

    const-string v1, "mtk_ifconfig"

    aput-object v1, v0, v4

    const-string v1, "iptables -t filter -L -n"

    aput-object v1, v0, v5

    const-string v1, "ping -c 1 -s 0 www.google.com"

    aput-object v1, v0, v6

    const-string v1, "http://www.google.com"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "http://www.baidu.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "http://www.sina.cn"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ps"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "getprop"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "setprop "

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "8.8.8.8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/connectivity/CdsUtilityActivity;->WEBSITES:[Ljava/lang/String;

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SHELL"

    aput-object v1, v0, v3

    const-string v1, "PING"

    aput-object v1, v0, v4

    const-string v1, "PING IPV6"

    aput-object v1, v0, v5

    const-string v1, "DNS"

    aput-object v1, v0, v6

    const-string v1, "HTTP RESPONSE"

    aput-object v1, v0, v7

    sput-object v0, Lcom/mediatek/connectivity/CdsUtilityActivity;->CMDTYPESTRING:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "media.wfd.video-format"

    aput-object v1, v0, v3

    const-string v1, "wlan.wfd.bt.exclude"

    aput-object v1, v0, v4

    const-string v1, "wfd.dumpts"

    aput-object v1, v0, v5

    const-string v1, "wfd.dumprgb"

    aput-object v1, v0, v6

    const-string v1, "wfd.slice.size"

    aput-object v1, v0, v7

    sput-object v0, Lcom/mediatek/connectivity/CdsUtilityActivity;->SYSPROP_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    iput-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mDialog:Landroid/app/ProgressDialog;

    .line 95
    iput-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mProgressThread:Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;

    .line 99
    iput-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mOutputScreen:Landroid/widget/TextView;

    .line 100
    iput-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mSysPropName:Landroid/widget/TextView;

    .line 101
    iput-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mSysPropValue:Landroid/widget/TextView;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdOption:I

    .line 327
    new-instance v0, Lcom/mediatek/connectivity/CdsUtilityActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/connectivity/CdsUtilityActivity$4;-><init>(Lcom/mediatek/connectivity/CdsUtilityActivity;)V

    iput-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mHandler:Landroid/os/Handler;

    .line 406
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/connectivity/CdsUtilityActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput p1, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdOption:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mSysPropName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/connectivity/CdsUtilityActivity;)Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mProgressThread:Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mediatek/connectivity/CdsUtilityActivity;Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;)Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mProgressThread:Lcom/mediatek/connectivity/CdsUtilityActivity$ProgressThread;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/connectivity/CdsUtilityActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mOutputScreen:Landroid/widget/TextView;

    return-object v0
.end method

.method private handleRunCmd()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 294
    iget-object v3, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, cmdStr:Ljava/lang/String;
    const-string v3, "CdsUtilityActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget v3, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdOption:I

    const/16 v4, 0x1002

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdOption:I

    const/16 v4, 0x1001

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdOption:I

    const/16 v4, 0x1003

    if-ne v3, v4, :cond_2

    .line 298
    :cond_0
    const-string v3, "CdsUtilityActivity"

    const-string v4, "Run PING/RUN command"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/mediatek/connectivity/CdsUtilityActivity$3;

    invoke-direct {v4, p0}, Lcom/mediatek/connectivity/CdsUtilityActivity$3;-><init>(Lcom/mediatek/connectivity/CdsUtilityActivity;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 323
    :cond_1
    :goto_0
    return-void

    .line 314
    :cond_2
    iget v3, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdOption:I

    const/16 v4, 0x1005

    if-ne v3, v4, :cond_3

    .line 315
    const-string v3, "CdsUtilityActivity"

    const-string v4, "Run HTTPRESPONSNE command"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v2, Lcom/mediatek/connectivity/CdsUtilityActivity$HttpTask;

    invoke-direct {v2, p0, v8}, Lcom/mediatek/connectivity/CdsUtilityActivity$HttpTask;-><init>(Lcom/mediatek/connectivity/CdsUtilityActivity;Lcom/mediatek/connectivity/CdsUtilityActivity$1;)V

    .line 317
    .local v2, httpTask:Lcom/mediatek/connectivity/CdsUtilityActivity$HttpTask;
    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 318
    .end local v2           #httpTask:Lcom/mediatek/connectivity/CdsUtilityActivity$HttpTask;
    :cond_3
    iget v3, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdOption:I

    const/16 v4, 0x1004

    if-ne v3, v4, :cond_1

    .line 319
    const-string v3, "CdsUtilityActivity"

    const-string v4, "Run DNS command"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v1, Lcom/mediatek/connectivity/CdsUtilityActivity$DnsTask;

    invoke-direct {v1, p0, v8}, Lcom/mediatek/connectivity/CdsUtilityActivity$DnsTask;-><init>(Lcom/mediatek/connectivity/CdsUtilityActivity;Lcom/mediatek/connectivity/CdsUtilityActivity$1;)V

    .line 321
    .local v1, dnsTask:Lcom/mediatek/connectivity/CdsUtilityActivity$DnsTask;
    new-array v3, v7, [Ljava/lang/String;

    aput-object v0, v3, v6

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private handleSysProp(Ljava/lang/Boolean;)V
    .locals 7
    .parameter "isSet"

    .prologue
    .line 265
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mSysPropName:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mSysPropValue:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x1f

    if-le v4, v5, :cond_1

    .line 269
    :cond_0
    const-string v0, "Please input the correct system property name"

    .line 270
    .local v0, errMsg:Ljava/lang/String;
    const-string v4, "CdsUtilityActivity"

    invoke-static {v4, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mOutputScreen:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .end local v0           #errMsg:Ljava/lang/String;
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x5b

    if-le v4, v5, :cond_3

    .line 277
    :cond_2
    const-string v0, "Please input the correct system property value"

    .line 278
    .restart local v0       #errMsg:Ljava/lang/String;
    const-string v4, "CdsUtilityActivity"

    invoke-static {v4, v0}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mOutputScreen:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 282
    .end local v0           #errMsg:Ljava/lang/String;
    :cond_3
    const-string v4, "CdsUtilityActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "name:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    :cond_4
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 287
    .local v2, result:Ljava/lang/String;
    const-string v4, "CdsUtilityActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "result:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mSysPropValue:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    iget-object v4, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mOutputScreen:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 246
    .local v0, buttonId:I
    const-string v1, "CdsUtilityActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "button id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sparse-switch v0, :sswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 250
    :sswitch_0
    invoke-direct {p0}, Lcom/mediatek/connectivity/CdsUtilityActivity;->handleRunCmd()V

    goto :goto_0

    .line 253
    :sswitch_1
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/connectivity/CdsUtilityActivity;->handleSysProp(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 256
    :sswitch_2
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/connectivity/CdsUtilityActivity;->handleSysProp(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x7f070007 -> :sswitch_1
        0x7f070023 -> :sswitch_0
        0x7f070027 -> :sswitch_2
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const v9, 0x1090009

    const v8, 0x1090008

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const v5, 0x7f030008

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 129
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mContext:Landroid/content/Context;

    .line 130
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 131
    const-string v5, "CdsUtilityActivity"

    const-string v6, "Could not get Conext of this activity"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    const-string v5, "connectivity"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/ConnectivityManager;

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 135
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v5, :cond_1

    .line 136
    const-string v5, "CdsUtilityActivity"

    const-string v6, "Could not get Connectivity Manager"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    return-void

    .line 140
    :cond_1
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x109000a

    sget-object v7, Lcom/mediatek/connectivity/CdsUtilityActivity;->WEBSITES:[Ljava/lang/String;

    invoke-direct {v5, p0, v6, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mAutoCompleteAdapter:Landroid/widget/ArrayAdapter;

    .line 143
    const v5, 0x7f070022

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/AutoCompleteTextView;

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;

    .line 144
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 145
    iget-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mCmdLineList:Landroid/widget/AutoCompleteTextView;

    iget-object v6, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mAutoCompleteAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 147
    const v5, 0x7f070029

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mOutputScreen:Landroid/widget/TextView;

    .line 148
    const v5, 0x7f070025

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mSysPropName:Landroid/widget/TextView;

    .line 149
    const v5, 0x7f070026

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/mediatek/connectivity/CdsUtilityActivity;->mSysPropValue:Landroid/widget/TextView;

    .line 151
    const v5, 0x7f070024

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 152
    .local v3, spinner:Landroid/widget/Spinner;
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/mediatek/connectivity/CdsUtilityActivity;->CMDTYPESTRING:[Ljava/lang/String;

    invoke-direct {v0, p0, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 153
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 154
    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 155
    new-instance v5, Lcom/mediatek/connectivity/CdsUtilityActivity$1;

    invoke-direct {v5, p0}, Lcom/mediatek/connectivity/CdsUtilityActivity$1;-><init>(Lcom/mediatek/connectivity/CdsUtilityActivity;)V

    invoke-virtual {v3, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 185
    const v5, 0x7f070023

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 186
    .local v2, button:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v5, 0x7f070007

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #button:Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 189
    .restart local v2       #button:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    const v5, 0x7f070027

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #button:Landroid/widget/Button;
    check-cast v2, Landroid/widget/Button;

    .line 192
    .restart local v2       #button:Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    const v5, 0x7f070028

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 195
    .local v4, spinner2:Landroid/widget/Spinner;
    new-instance v1, Landroid/widget/ArrayAdapter;

    sget-object v5, Lcom/mediatek/connectivity/CdsUtilityActivity;->SYSPROP_LIST:[Ljava/lang/String;

    invoke-direct {v1, p0, v8, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 196
    .local v1, adapter2:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v1, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 197
    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 198
    new-instance v5, Lcom/mediatek/connectivity/CdsUtilityActivity$2;

    invoke-direct {v5, p0}, Lcom/mediatek/connectivity/CdsUtilityActivity$2;-><init>(Lcom/mediatek/connectivity/CdsUtilityActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 211
    const-string v5, "CdsUtilityActivity"

    const-string v6, "CdsUtilityActivity is started"

    invoke-static {v5, v6}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 223
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 226
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 216
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 218
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 231
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 233
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 241
    return-void
.end method
