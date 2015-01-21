.class Lcom/android/mms/ui/ClassifyGeneralFragment$1;
.super Ljava/lang/Object;
.source "ClassifyGeneralFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/ClassifyGeneralFragment;->showFontDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/ClassifyGeneralFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/mms/ui/ClassifyGeneralFragment$1;->this$0:Lcom/android/mms/ui/ClassifyGeneralFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 538
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 539
    return-void
.end method
