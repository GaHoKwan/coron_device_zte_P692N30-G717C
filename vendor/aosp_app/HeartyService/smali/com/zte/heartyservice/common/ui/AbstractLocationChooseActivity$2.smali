.class Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity$2;
.super Ljava/lang/Object;
.source "AbstractLocationChooseActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity$2;->this$0:Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity$2;->this$0:Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;

    invoke-virtual {v0}, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->finish()V

    .line 107
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
