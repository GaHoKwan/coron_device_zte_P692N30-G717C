.class Lcom/android/email/activity/setup/AccountSetupBasics$SaveAddressTask;
.super Landroid/os/AsyncTask;
.source "AccountSetupBasics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/email/activity/setup/AccountSetupBasics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveAddressTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/setup/AccountSetupBasics;


# direct methods
.method private constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V
    .locals 0
    .parameter

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$SaveAddressTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1045
    invoke-direct {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$SaveAddressTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1045
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/email/activity/setup/AccountSetupBasics$SaveAddressTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1048
    iget-object v0, p0, Lcom/android/email/activity/setup/AccountSetupBasics$SaveAddressTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    aget-object v1, p1, v2

    invoke-static {v0, v1}, Lcom/mediatek/email/provider/history/EmailAddress;->saveAddress(Landroid/content/Context;Ljava/lang/String;)V

    .line 1049
    new-instance v0, Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;

    iget-object v1, p0, Lcom/android/email/activity/setup/AccountSetupBasics$SaveAddressTask;->this$0:Lcom/android/email/activity/setup/AccountSetupBasics;

    invoke-direct {v0, v1, v3}, Lcom/android/email/activity/setup/AccountSetupBasics$PrepareAddressDataTask;-><init>(Lcom/android/email/activity/setup/AccountSetupBasics;Lcom/android/email/activity/setup/AccountSetupBasics$1;)V

    new-array v1, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1050
    return-object v3
.end method
