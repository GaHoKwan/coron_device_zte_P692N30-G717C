.class Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$1;
.super Ljava/lang/Object;
.source "ChooseCycleDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->create(Landroid/content/Context;ILcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;)Lcom/zte/heartyservice/setting/ChooseCycleDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

.field final synthetic val$cb:Lcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;Lcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$1;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    iput-object p2, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$1;->val$cb:Lcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$1;->val$cb:Lcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$1;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    #calls: Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->getChoose()I
    invoke-static {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->access$000(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;->writeChoose(I)V

    .line 59
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 60
    return-void
.end method
