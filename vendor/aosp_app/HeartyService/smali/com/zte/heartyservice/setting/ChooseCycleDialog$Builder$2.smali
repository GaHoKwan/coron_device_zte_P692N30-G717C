.class Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$2;
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


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder$2;->this$0:Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 67
    return-void
.end method
