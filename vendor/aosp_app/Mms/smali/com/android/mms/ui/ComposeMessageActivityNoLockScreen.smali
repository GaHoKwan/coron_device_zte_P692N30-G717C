.class public Lcom/android/mms/ui/ComposeMessageActivityNoLockScreen;
.super Lcom/android/mms/ui/ComposeMessageActivity;
.source "ComposeMessageActivityNoLockScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/mms/ui/ComposeMessageActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 30
    invoke-super {p0, p1}, Lcom/android/mms/ui/ComposeMessageActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    return-void
.end method
