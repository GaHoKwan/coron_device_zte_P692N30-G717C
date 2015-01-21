.class Lcom/hf/UI/CityActivity$5;
.super Landroid/content/AsyncQueryHandler;
.source "CityActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/CityActivity;->setQueryHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/CityActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/CityActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/CityActivity$5;->this$0:Lcom/hf/UI/CityActivity;

    .line 364
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 369
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 370
    iget-object v0, p0, Lcom/hf/UI/CityActivity$5;->this$0:Lcom/hf/UI/CityActivity;

    #getter for: Lcom/hf/UI/CityActivity;->mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;
    invoke-static {v0}, Lcom/hf/UI/CityActivity;->access$4(Lcom/hf/UI/CityActivity;)Lcom/hf/UI/SearchCityAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/hf/UI/SearchCityAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 371
    return-void
.end method
