.class public Lcom/android/email/MessagingExceptionStrings;
.super Ljava/lang/Object;
.source "MessagingExceptionStrings.java"


# static fields
.field private static final NO_ERROR_STRING:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getErrorString(Landroid/content/Context;Lcom/android/emailcommon/mail/MessagingException;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "e"

    .prologue
    .line 30
    invoke-static {p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorStringResourceId(Lcom/android/emailcommon/mail/MessagingException;)I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/android/email/MessagingExceptionStrings;->getErrorStringResourceId(Lcom/android/emailcommon/mail/MessagingException;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getErrorStringResourceId(Lcom/android/emailcommon/mail/MessagingException;)I
    .locals 2
    .parameter "e"

    .prologue
    const v0, 0x7f08018a

    .line 38
    invoke-virtual {p0}, Lcom/android/emailcommon/mail/MessagingException;->getExceptionType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 56
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    :pswitch_1
    return v0

    .line 40
    :pswitch_2
    const v0, 0x7f080111

    goto :goto_0

    .line 42
    :pswitch_3
    const v0, 0x7f080188

    goto :goto_0

    .line 44
    :pswitch_4
    const v0, 0x7f080189

    goto :goto_0

    .line 52
    :pswitch_5
    const v0, 0x7f08018d

    goto :goto_0

    .line 54
    :pswitch_6
    const v0, 0x7f080184

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
