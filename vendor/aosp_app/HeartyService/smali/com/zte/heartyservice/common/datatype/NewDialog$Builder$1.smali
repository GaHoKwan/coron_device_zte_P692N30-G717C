.class Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$1;
.super Ljava/lang/Object;
.source "NewDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->create()Lcom/zte/heartyservice/common/datatype/NewDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

.field final synthetic val$dialog:Lcom/zte/heartyservice/common/datatype/NewDialog;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;Lcom/zte/heartyservice/common/datatype/NewDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$1;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    iput-object p2, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$1;->val$dialog:Lcom/zte/heartyservice/common/datatype/NewDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$1;->this$0:Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;

    #getter for: Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->positiveButonClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {v0}, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;->access$400(Lcom/zte/heartyservice/common/datatype/NewDialog$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/common/datatype/NewDialog$Builder$1;->val$dialog:Lcom/zte/heartyservice/common/datatype/NewDialog;

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 212
    return-void
.end method