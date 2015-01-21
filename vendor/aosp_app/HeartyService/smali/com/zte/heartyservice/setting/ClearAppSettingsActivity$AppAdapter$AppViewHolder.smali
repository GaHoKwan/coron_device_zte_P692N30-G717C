.class Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;
.super Ljava/lang/Object;
.source "ClearAppSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field name:Landroid/widget/TextView;

.field switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field final synthetic this$1:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;->this$1:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter$AppViewHolder;-><init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$AppAdapter;)V

    return-void
.end method
