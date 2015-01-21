.class Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;
.super Ljava/lang/Object;
.source "WidgetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FavoriteEntry"
.end annotation


# instance fields
.field public contactUri:Ljava/lang/String;

.field public dbId:I

.field public name:Ljava/lang/String;

.field final synthetic this$1:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;

.field public videoUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter "videoUriStr"
    .parameter "nameStr"
    .parameter "contactUriStr"
    .parameter "id"

    .prologue
    .line 252
    iput-object p1, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->this$1:Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 253
    iput-object p2, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->videoUri:Ljava/lang/String;

    .line 254
    iput-object p3, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->name:Ljava/lang/String;

    .line 255
    iput-object p4, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->contactUri:Ljava/lang/String;

    .line 256
    iput p5, p0, Lcom/mediatek/videofavorites/WidgetAdapter$ViewFactory$FavoriteEntry;->dbId:I

    .line 257
    return-void
.end method
