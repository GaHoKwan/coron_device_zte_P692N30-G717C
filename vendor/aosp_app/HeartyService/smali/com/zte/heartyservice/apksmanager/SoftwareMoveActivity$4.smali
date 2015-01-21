.class Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$4;
.super Ljava/lang/Object;
.source "SoftwareMoveActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 401
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$4;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 405
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$4;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->showDialog(I)V

    .line 406
    return-void
.end method
