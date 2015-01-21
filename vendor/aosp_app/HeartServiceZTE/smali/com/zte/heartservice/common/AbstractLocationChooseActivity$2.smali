.class Lcom/zte/heartservice/common/AbstractLocationChooseActivity$2;
.super Ljava/lang/Object;
.source "AbstractLocationChooseActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartservice/common/AbstractLocationChooseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartservice/common/AbstractLocationChooseActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartservice/common/AbstractLocationChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity$2;->this$0:Lcom/zte/heartservice/common/AbstractLocationChooseActivity;

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 110
    iget-object v0, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity$2;->this$0:Lcom/zte/heartservice/common/AbstractLocationChooseActivity;

    invoke-virtual {v0}, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->finish()V

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 105
    const/4 v0, 0x1

    return v0
.end method
