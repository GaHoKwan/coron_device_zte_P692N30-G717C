.class Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$1;
.super Ljava/lang/Object;
.source "SoftwareMoveActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->onCreateDialog(I)Landroid/app/Dialog;
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
    .line 320
    iput-object p1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    iget-object v1, p0, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity$1;->this$0:Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;

    iget-object v1, v1, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->mSelecteds:[Lcom/zte/heartyservice/apksmanager/AppSelected;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/zte/heartyservice/apksmanager/AppSelected;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/apksmanager/SoftwareMoveActivity;->triggerByAllBtn(Ljava/lang/String;)V

    .line 326
    return-void
.end method
