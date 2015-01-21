.class Lcom/android/email/activity/ActionBarController$2;
.super Ljava/lang/Object;
.source "ActionBarController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/email/activity/ActionBarController;-><init>(Landroid/content/Context;Landroid/app/LoaderManager;Landroid/app/ActionBar;Lcom/android/email/activity/ActionBarController$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/email/activity/ActionBarController;


# direct methods
.method constructor <init>(Lcom/android/email/activity/ActionBarController;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController$2;->this$0:Lcom/android/email/activity/ActionBarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController$2;->this$0:Lcom/android/email/activity/ActionBarController;

    iget-object v0, v0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/email/activity/ActionBarController$Callback;->switchMail(Z)V

    .line 339
    return-void
.end method
