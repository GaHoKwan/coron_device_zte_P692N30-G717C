.class public Lcom/zte/engineer/SmsSecurityNumberSet;
.super Lcom/zte/engineer/EmActivity;
.source "SmsSecurityNumberSet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "Emode.Smsnumberset"


# instance fields
.field mSmsNumber:Landroid/widget/EditText;

.field mSmsProp:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/zte/engineer/EmActivity;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/zte/engineer/SmsSecurityNumberSet;->mSmsProp:Ljava/util/Properties;

    return-void
.end method

.method private setSmsNumber()V
    .locals 3

    .prologue
    .line 59
    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityNumberSet;->mSmsNumber:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, number:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/zte/engineer/SmsSecurityNumberSet;->mSmsProp:Ljava/util/Properties;

    invoke-static {v2, v1}, Lcom/zte/engineer/SmsSecurityUtil;->setSmsNumber(Ljava/util/Properties;Ljava/lang/String;)Z
    :try_end_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, e:Lcom/zte/engineer/EmodeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    const v2, 0x7f060135

    invoke-static {p0, v2}, Lcom/zte/engineer/Utilities;->toastMsgInfo(Landroid/content/Context;I)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f080073

    if-ne v0, v1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/zte/engineer/SmsSecurityNumberSet;->setSmsNumber()V

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 56
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f060135

    .line 21
    invoke-super {p0, p1}, Lcom/zte/engineer/EmActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 23
    const v2, 0x7f030016

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 25
    const v2, 0x7f080072

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/zte/engineer/SmsSecurityNumberSet;->mSmsNumber:Landroid/widget/EditText;

    .line 27
    const v2, 0x7f080073

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 28
    .local v1, mButton:Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    :try_start_0
    invoke-static {}, Lcom/zte/engineer/SmsSecurityUtil;->getSecuritySmsProp()Ljava/util/Properties;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/engineer/SmsSecurityNumberSet;->mSmsProp:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/zte/engineer/EmodeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 41
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, e:Ljava/io/IOException;
    const-string v2, "Emode.Smsnumberset"

    const-string v3, "onCreate:load security props failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {p0, v4}, Lcom/zte/engineer/Utilities;->toastMsgInfo(Landroid/content/Context;I)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 36
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 37
    .local v0, e:Lcom/zte/engineer/EmodeException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    invoke-static {p0, v4}, Lcom/zte/engineer/Utilities;->toastMsgInfo(Landroid/content/Context;I)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 45
    invoke-super {p0}, Lcom/zte/engineer/EmActivity;->onResume()V

    .line 47
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityNumberSet;->mSmsProp:Ljava/util/Properties;

    const-string v2, "smsphonenumber"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, phonenumber:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/engineer/SmsSecurityNumberSet;->mSmsNumber:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
