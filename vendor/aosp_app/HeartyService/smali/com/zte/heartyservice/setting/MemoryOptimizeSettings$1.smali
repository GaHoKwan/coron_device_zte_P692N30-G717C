.class Lcom/zte/heartyservice/setting/MemoryOptimizeSettings$1;
.super Ljava/lang/Object;
.source "MemoryOptimizeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings$1;->this$0:Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 67
    :try_start_0
    const-string v0, "hs_memory_optimize_data"

    iget-object v1, p0, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings$1;->this$0:Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;

    #getter for: Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->mValues:[I
    invoke-static {v1}, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;->access$000(Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;)[I

    move-result-object v1

    aget v1, v1, p3

    invoke-static {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSettingInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method
