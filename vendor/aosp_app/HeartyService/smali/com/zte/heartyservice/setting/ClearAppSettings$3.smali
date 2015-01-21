.class Lcom/zte/heartyservice/setting/ClearAppSettings$3;
.super Ljava/lang/Object;
.source "ClearAppSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartyservice/setting/ClearAppSettings;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/ClearAppSettings;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/setting/ClearAppSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings$3;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings$3;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettings;

    const-class v2, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/zte/heartyservice/setting/ClearAppSettings$3;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettings;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/setting/ClearAppSettings;->startActivity(Landroid/content/Intent;)V

    .line 118
    return-void
.end method
