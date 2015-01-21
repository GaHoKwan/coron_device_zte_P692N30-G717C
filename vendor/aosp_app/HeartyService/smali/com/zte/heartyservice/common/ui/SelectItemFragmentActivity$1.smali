.class Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity$1;
.super Ljava/lang/Object;
.source "SelectItemFragmentActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity$1;->this$0:Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity$1;->this$0:Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/SelectItemFragmentActivity;->onBackPressed()V

    .line 47
    return-void
.end method
