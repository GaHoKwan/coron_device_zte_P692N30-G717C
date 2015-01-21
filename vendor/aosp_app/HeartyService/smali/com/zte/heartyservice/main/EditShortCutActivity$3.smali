.class Lcom/zte/heartyservice/main/EditShortCutActivity$3;
.super Ljava/lang/Object;
.source "EditShortCutActivity.java"

# interfaces
.implements Lcom/zte/heartyservice/common/datatype/EditableListView$RemoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/main/EditShortCutActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/main/EditShortCutActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 177
    iput-object p1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$3;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public remove(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$3;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->listAdapter:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;
    invoke-static {v0}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$200(Lcom/zte/heartyservice/main/EditShortCutActivity;)Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/main/EditShortCutActivity$3;->this$0:Lcom/zte/heartyservice/main/EditShortCutActivity;

    #getter for: Lcom/zte/heartyservice/main/EditShortCutActivity;->listAdapter:Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;
    invoke-static {v1}, Lcom/zte/heartyservice/main/EditShortCutActivity;->access$200(Lcom/zte/heartyservice/main/EditShortCutActivity;)Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/EditShortCutActivity$DragAndDropListViewAdapter;->remove(Ljava/lang/Object;)V

    .line 181
    return-void
.end method
