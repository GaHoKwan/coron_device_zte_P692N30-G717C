.class Lcom/zte/heartservice/common/AbstractLocationChooseActivity$1;
.super Ljava/lang/Object;
.source "AbstractLocationChooseActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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
    iput-object p1, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity$1;->this$0:Lcom/zte/heartservice/common/AbstractLocationChooseActivity;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/zte/heartservice/common/AbstractLocationChooseActivity$1;->this$0:Lcom/zte/heartservice/common/AbstractLocationChooseActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartservice/common/AbstractLocationChooseActivity;->loadData(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method
