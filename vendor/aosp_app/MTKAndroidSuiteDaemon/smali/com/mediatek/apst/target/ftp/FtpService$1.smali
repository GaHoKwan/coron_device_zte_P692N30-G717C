.class Lcom/mediatek/apst/target/ftp/FtpService$1;
.super Landroid/content/BroadcastReceiver;
.source "FtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/apst/target/ftp/FtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/apst/target/ftp/FtpService;


# direct methods
.method constructor <init>(Lcom/mediatek/apst/target/ftp/FtpService;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mediatek/apst/target/ftp/FtpService$1;->this$0:Lcom/mediatek/apst/target/ftp/FtpService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 68
    if-eqz p2, :cond_0

    .line 69
    const-string v2, "encoding"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, charset:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, upper:Ljava/lang/String;
    const-string v2, "950"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 73
    const-string v2, "Big5-HKSCS"

    sput-object v2, Lcom/mediatek/apst/target/ftp/FtpService;->sFtpEncoding:Ljava/lang/String;

    .line 91
    .end local v0           #charset:Ljava/lang/String;
    .end local v1           #upper:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 74
    .restart local v0       #charset:Ljava/lang/String;
    .restart local v1       #upper:Ljava/lang/String;
    :cond_1
    const-string v2, "WINDOWS-125"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 75
    sput-object v0, Lcom/mediatek/apst/target/ftp/FtpService;->sFtpEncoding:Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_2
    const-string v2, "8859"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 77
    sput-object v1, Lcom/mediatek/apst/target/ftp/FtpService;->sFtpEncoding:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_3
    const-string v2, "932"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 79
    const-string v2, "Shift-JIS"

    sput-object v2, Lcom/mediatek/apst/target/ftp/FtpService;->sFtpEncoding:Ljava/lang/String;

    goto :goto_0

    .line 80
    :cond_4
    const-string v2, "936"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 81
    const-string v2, "GBK"

    sput-object v2, Lcom/mediatek/apst/target/ftp/FtpService;->sFtpEncoding:Ljava/lang/String;

    goto :goto_0

    .line 82
    :cond_5
    const-string v2, "EUC-KR"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 83
    const-string v2, "EUC-KR"

    sput-object v2, Lcom/mediatek/apst/target/ftp/FtpService;->sFtpEncoding:Ljava/lang/String;

    goto :goto_0

    .line 84
    :cond_6
    const-string v2, "EUC-JP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 85
    const-string v2, "EUC-JP"

    sput-object v2, Lcom/mediatek/apst/target/ftp/FtpService;->sFtpEncoding:Ljava/lang/String;

    goto :goto_0

    .line 86
    :cond_7
    const-string v2, "2022"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    sput-object v0, Lcom/mediatek/apst/target/ftp/FtpService;->sFtpEncoding:Ljava/lang/String;

    goto :goto_0
.end method
