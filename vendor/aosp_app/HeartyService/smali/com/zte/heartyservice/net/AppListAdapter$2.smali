.class Lcom/zte/heartyservice/net/AppListAdapter$2;
.super Ljava/lang/Object;
.source "AppListAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/net/AppListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/net/AppListAdapter;

.field final synthetic val$ap:Lcom/zte/heartyservice/net/AppUsageItem;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/net/AppListAdapter;Lcom/zte/heartyservice/net/AppUsageItem;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/zte/heartyservice/net/AppListAdapter$2;->this$0:Lcom/zte/heartyservice/net/AppListAdapter;

    iput-object p2, p0, Lcom/zte/heartyservice/net/AppListAdapter$2;->val$ap:Lcom/zte/heartyservice/net/AppUsageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppListAdapter$2;->this$0:Lcom/zte/heartyservice/net/AppListAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/net/AppListAdapter$2;->val$ap:Lcom/zte/heartyservice/net/AppUsageItem;

    #calls: Lcom/zte/heartyservice/net/AppListAdapter;->switchWifiInternetPermisson(Lcom/zte/heartyservice/net/AppUsageItem;Z)V
    invoke-static {v0, v1, p2}, Lcom/zte/heartyservice/net/AppListAdapter;->access$200(Lcom/zte/heartyservice/net/AppListAdapter;Lcom/zte/heartyservice/net/AppUsageItem;Z)V

    .line 284
    const-string v0, "LIXI"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wifi button is pressed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppListAdapter$2;->this$0:Lcom/zte/heartyservice/net/AppListAdapter;

    #getter for: Lcom/zte/heartyservice/net/AppListAdapter;->mCallback:Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;
    invoke-static {v0}, Lcom/zte/heartyservice/net/AppListAdapter;->access$100(Lcom/zte/heartyservice/net/AppListAdapter;)Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;->onListSwitchChanged()V

    .line 286
    return-void
.end method
