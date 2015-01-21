.class Lzte/com/cn/cloudnotepad/filer/FilerActivity$3;
.super Ljava/lang/Object;
.source "FilerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzte/com/cn/cloudnotepad/filer/FilerActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;


# direct methods
.method constructor <init>(Lzte/com/cn/cloudnotepad/filer/FilerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$3;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 81
    iget-object v0, p0, Lzte/com/cn/cloudnotepad/filer/FilerActivity$3;->this$0:Lzte/com/cn/cloudnotepad/filer/FilerActivity;

    invoke-virtual {v0}, Lzte/com/cn/cloudnotepad/filer/FilerActivity;->createPathPopupWindow()V

    .line 82
    return-void
.end method
