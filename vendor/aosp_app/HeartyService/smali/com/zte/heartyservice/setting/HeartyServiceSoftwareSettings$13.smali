.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$13;
.super Ljava/lang/Object;
.source "HeartyServiceSoftwareSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->downloadUmewebDlg(Landroid/widget/CompoundButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

.field final synthetic val$buttonView:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;Landroid/widget/CompoundButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$13;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    iput-object p2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$13;->val$buttonView:Landroid/widget/CompoundButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$13;->val$buttonView:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 478
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$13;->this$0:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;

    invoke-virtual {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 479
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 480
    return-void
.end method