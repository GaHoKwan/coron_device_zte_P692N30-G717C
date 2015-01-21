.class Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "HeartyServiceSoftwareSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field summary:Landroid/widget/TextView;

.field switch_:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field final synthetic this$1:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 661
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;->this$1:Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 661
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSoftwareSettings$HeaderAdapter;)V

    return-void
.end method
