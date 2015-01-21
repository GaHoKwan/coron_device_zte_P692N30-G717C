.class Lcom/zte/heartyservice/setting/HeartyServiceSettings$2;
.super Ljava/lang/Object;
.source "HeartyServiceSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSettings;->closeAutoRunDlg(ZLandroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

.field final synthetic val$isChecked:Z


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 816
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$2;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    iput-boolean p2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$2;->val$isChecked:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 820
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$2;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    iget-boolean v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$2;->val$isChecked:Z

    invoke-static {v0, v1}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->setAutoRun(Landroid/content/Context;Z)V

    .line 821
    iget-boolean v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$2;->val$isChecked:Z

    invoke-static {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->access$1602(Z)Z

    .line 822
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$2;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSettings;

    invoke-virtual {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 823
    return-void
.end method
