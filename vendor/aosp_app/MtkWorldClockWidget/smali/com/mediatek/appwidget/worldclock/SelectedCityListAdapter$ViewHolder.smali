.class Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "SelectedCityListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field cityNameView:Landroid/widget/TextView;

.field currentCityButton:Landroid/widget/RadioButton;

.field final synthetic this$0:Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;

.field weatherIdView:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;->this$0:Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter$ViewHolder;-><init>(Lcom/mediatek/appwidget/worldclock/SelectedCityListAdapter;)V

    return-void
.end method
