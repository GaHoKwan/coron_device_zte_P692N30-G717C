.class Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity$1;
.super Ljava/lang/Object;
.source "AbstractLocationChooseActivity.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


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
    .line 87
    iput-object p1, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity$1;->this$0:Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 1
    .parameter "newText"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity$1;->this$0:Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/common/ui/AbstractLocationChooseActivity;->loadData(Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .parameter "query"

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
