.class Lcom/android/mms/ui/WPMessageActivity$2$1;
.super Ljava/lang/Object;
.source "WPMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/mms/ui/WPMessageActivity$2;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/mms/ui/WPMessageActivity$2;


# direct methods
.method constructor <init>(Lcom/android/mms/ui/WPMessageActivity$2;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/mms/ui/WPMessageActivity$2$1;->this$1:Lcom/android/mms/ui/WPMessageActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 749
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 750
    return-void
.end method