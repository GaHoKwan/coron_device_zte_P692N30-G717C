.class public Lcom/zte/heartyservice/net/AppListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "AppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/net/AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation


# instance fields
.field app_icon:Landroid/widget/ImageView;

.field app_name:Landroid/widget/TextView;

.field app_traffics:Landroid/widget/TextView;

.field app_traffics2:Landroid/widget/TextView;

.field permission_icon:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field wlan_permission_icon:Lcom/zte/heartyservice/common/datatype/P3SwitchforWifi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
