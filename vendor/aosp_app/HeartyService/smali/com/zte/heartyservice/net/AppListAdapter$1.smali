.class Lcom/zte/heartyservice/net/AppListAdapter$1;
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
    .line 269
    iput-object p1, p0, Lcom/zte/heartyservice/net/AppListAdapter$1;->this$0:Lcom/zte/heartyservice/net/AppListAdapter;

    iput-object p2, p0, Lcom/zte/heartyservice/net/AppListAdapter$1;->val$ap:Lcom/zte/heartyservice/net/AppUsageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 273
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppListAdapter$1;->this$0:Lcom/zte/heartyservice/net/AppListAdapter;

    iget-object v1, p0, Lcom/zte/heartyservice/net/AppListAdapter$1;->val$ap:Lcom/zte/heartyservice/net/AppUsageItem;

    #calls: Lcom/zte/heartyservice/net/AppListAdapter;->switchAppInternetPermisson(Lcom/zte/heartyservice/net/AppUsageItem;Z)V
    invoke-static {v0, v1, p2}, Lcom/zte/heartyservice/net/AppListAdapter;->access$000(Lcom/zte/heartyservice/net/AppListAdapter;Lcom/zte/heartyservice/net/AppUsageItem;Z)V

    .line 274
    iget-object v0, p0, Lcom/zte/heartyservice/net/AppListAdapter$1;->this$0:Lcom/zte/heartyservice/net/AppListAdapter;

    #getter for: Lcom/zte/heartyservice/net/AppListAdapter;->mCallback:Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;
    invoke-static {v0}, Lcom/zte/heartyservice/net/AppListAdapter;->access$100(Lcom/zte/heartyservice/net/AppListAdapter;)Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/zte/heartyservice/net/AppListAdapter$AppListAdapterCallback;->onListSwitchChanged()V

    .line 275
    return-void
.end method