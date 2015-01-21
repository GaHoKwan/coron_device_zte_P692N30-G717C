.class public final Lcom/mediatek/vcalendar/valuetype/CalAddress;
.super Ljava/lang/Object;
.source "CalAddress.java"


# static fields
.field private static final MAILTO:Ljava/lang/String; = "mailto:"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static getUserCalAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "email"

    .prologue
    .line 60
    invoke-static {p0}, Lcom/mediatek/vcalendar/valuetype/CalAddress;->isValidAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mailto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getUserMail(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "calAddress"

    .prologue
    .line 74
    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 76
    .local v1, start:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, mail:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/vcalendar/valuetype/CalAddress;->isValidAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .end local v0           #mail:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #mail:Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "emailAddress"

    .prologue
    .line 89
    new-instance v0, Lcom/android/common/Rfc822Validator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/Rfc822Validator;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, emailValidator:Lcom/android/common/Rfc822Validator;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/Rfc822Validator;->setRemoveInvalid(Z)V

    .line 92
    invoke-virtual {v0, p0}, Lcom/android/common/Rfc822Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    return v1
.end method
