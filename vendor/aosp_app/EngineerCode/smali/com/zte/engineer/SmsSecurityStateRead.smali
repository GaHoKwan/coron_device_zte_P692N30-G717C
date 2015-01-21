.class public Lcom/zte/engineer/SmsSecurityStateRead;
.super Lcom/zte/engineer/ShowSimpleInfo;
.source "SmsSecurityStateRead.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.SmsStateRead"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/zte/engineer/ShowSimpleInfo;-><init>()V

    return-void
.end method


# virtual methods
.method addInfoItems()V
    .locals 5

    .prologue
    .line 12
    const v2, 0x7f0600a5

    .line 13
    .local v2, smsState:I
    const/4 v0, 0x0

    .line 15
    .local v0, bSecuritySmsOn:Z
    const-string v3, "Emode.SmsStateRead"

    const-string v4, "smsState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsState()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 25
    :goto_0
    if-eqz v0, :cond_0

    .line 26
    const v2, 0x7f0600a6

    .line 31
    :goto_1
    const v3, 0x7f0600d6

    invoke-virtual {p0, v3, v2}, Lcom/zte/engineer/ShowSimpleInfo;->addInfoItem(II)V

    .line 32
    const v3, 0x7f0600cd

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/zte/engineer/ShowSimpleInfo;->showMidBtn(Ljava/lang/String;)V

    .line 33
    return-void

    .line 19
    :catch_0
    move-exception v1

    .line 20
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 21
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 22
    .local v1, e:Lcom/zte/engineer/EmodeException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 28
    .end local v1           #e:Lcom/zte/engineer/EmodeException;
    :cond_0
    const v2, 0x7f0600a5

    goto :goto_1
.end method
