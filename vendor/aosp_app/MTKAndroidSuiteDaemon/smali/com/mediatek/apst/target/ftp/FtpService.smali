.class public Lcom/mediatek/apst/target/ftp/FtpService;
.super Landroid/app/Service;
.source "FtpService.java"


# static fields
.field private static final ACTION_ENCODING:Ljava/lang/String; = "com.mediatek.apst.target.action.PC_ENCODING"

.field private static final CHARSET_BIG5:Ljava/lang/String; = "Big5-HKSCS"

.field private static final CHARSET_EUC_JP:Ljava/lang/String; = "EUC-JP"

.field private static final CHARSET_EUC_KR:Ljava/lang/String; = "EUC-KR"

.field private static final CHARSET_GBK:Ljava/lang/String; = "GBK"

.field private static final CHARSET_SHIFT_JIS:Ljava/lang/String; = "Shift-JIS"

.field private static final KEY_ENCODING:Ljava/lang/String; = "encoding"

.field private static final PC_CHARSET_932:Ljava/lang/String; = "932"

.field private static final PC_CHARSET_936:Ljava/lang/String; = "936"

.field private static final PC_CHARSET_950:Ljava/lang/String; = "950"

.field private static final PC_CHARSET_CONTAIN_125:Ljava/lang/String; = "WINDOWS-125"

.field private static final PC_CHARSET_CONTAIN_2022:Ljava/lang/String; = "2022"

.field private static final PC_CHARSET_CONTAIN_8859:Ljava/lang/String; = "8859"

.field public static sFtpEncoding:Ljava/lang/String;


# instance fields
.field private mFtpServer:Lcom/mediatek/apst/target/ftp/FtpServer;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "GBK"

    sput-object v0, Lcom/mediatek/apst/target/ftp/FtpService;->sFtpEncoding:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 64
    new-instance v0, Lcom/mediatek/apst/target/ftp/FtpService$1;

    invoke-direct {v0, p0}, Lcom/mediatek/apst/target/ftp/FtpService$1;-><init>(Lcom/mediatek/apst/target/ftp/FtpService;)V

    iput-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 103
    new-instance v0, Lcom/mediatek/apst/target/ftp/FtpServer;

    invoke-direct {v0}, Lcom/mediatek/apst/target/ftp/FtpServer;-><init>()V

    iput-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpService;->mFtpServer:Lcom/mediatek/apst/target/ftp/FtpServer;

    .line 104
    iget-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpService;->mFtpServer:Lcom/mediatek/apst/target/ftp/FtpServer;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 105
    iget-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.mediatek.apst.target.action.PC_ENCODING"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 111
    iget-object v0, p0, Lcom/mediatek/apst/target/ftp/FtpService;->mFtpServer:Lcom/mediatek/apst/target/ftp/FtpServer;

    invoke-virtual {v0}, Lcom/mediatek/apst/target/ftp/FtpServer;->destroy()V

    .line 112
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 113
    return-void
.end method
