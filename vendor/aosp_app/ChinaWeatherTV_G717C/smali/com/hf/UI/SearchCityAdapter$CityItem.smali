.class Lcom/hf/UI/SearchCityAdapter$CityItem;
.super Ljava/lang/Object;
.source "SearchCityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hf/UI/SearchCityAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CityItem"
.end annotation


# instance fields
.field city:Lcom/hf/model/CityModel;

.field final synthetic this$0:Lcom/hf/UI/SearchCityAdapter;


# direct methods
.method constructor <init>(Lcom/hf/UI/SearchCityAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/hf/UI/SearchCityAdapter$CityItem;->this$0:Lcom/hf/UI/SearchCityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
