.class Lcom/android/email/activity/Welcome$MyConnectionAlertDialog$3;
.super Ljava/lang/Object;
.source "Welcome.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;


# direct methods
.method constructor <init>(Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog$3;->this$0:Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 625
    invoke-static {}, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->access$700()Lcom/android/email/activity/Welcome;

    move-result-object v0

    const-wide/16 v1, -0x1

    #setter for: Lcom/android/email/activity/Welcome;->mAccountId:J
    invoke-static {v0, v1, v2}, Lcom/android/email/activity/Welcome;->access$902(Lcom/android/email/activity/Welcome;J)J

    .line 626
    invoke-static {}, Lcom/android/email/activity/Welcome$MyConnectionAlertDialog;->access$700()Lcom/android/email/activity/Welcome;

    move-result-object v0

    #calls: Lcom/android/email/activity/Welcome;->resolveAccount()V
    invoke-static {v0}, Lcom/android/email/activity/Welcome;->access$500(Lcom/android/email/activity/Welcome;)V

    .line 627
    return-void
.end method
