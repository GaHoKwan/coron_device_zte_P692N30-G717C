.class Lcom/hf/UI/MainActivity$24;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/MainActivity;->showAnniversaryDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/MainActivity;

.field private final synthetic val$mRootLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/hf/UI/MainActivity;Landroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/MainActivity$24;->this$0:Lcom/hf/UI/MainActivity;

    iput-object p2, p0, Lcom/hf/UI/MainActivity$24;->val$mRootLayout:Landroid/widget/RelativeLayout;

    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 1345
    invoke-static {}, Lcom/hf/share/ShareManager;->instance()Lcom/hf/share/ShareManager;

    move-result-object v0

    .line 1346
    iget-object v1, p0, Lcom/hf/UI/MainActivity$24;->this$0:Lcom/hf/UI/MainActivity;

    iget-object v2, p0, Lcom/hf/UI/MainActivity$24;->val$mRootLayout:Landroid/widget/RelativeLayout;

    .line 1345
    invoke-virtual {v0, v1, v2}, Lcom/hf/share/ShareManager;->showAnniversaryShareDialog(Landroid/content/Context;Landroid/view/View;)V

    .line 1347
    return-void
.end method
