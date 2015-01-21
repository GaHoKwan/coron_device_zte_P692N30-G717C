.class Lcom/hf/UI/InitDefaultActivity$4;
.super Landroid/content/AsyncQueryHandler;
.source "InitDefaultActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/InitDefaultActivity;->initQueryHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/InitDefaultActivity;


# direct methods
.method constructor <init>(Lcom/hf/UI/InitDefaultActivity;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "$anonymous0"

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/InitDefaultActivity$4;->this$0:Lcom/hf/UI/InitDefaultActivity;

    .line 262
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
    .line 267
    iget-object v0, p0, Lcom/hf/UI/InitDefaultActivity$4;->this$0:Lcom/hf/UI/InitDefaultActivity;

    #getter for: Lcom/hf/UI/InitDefaultActivity;->mSearchAdapter:Lcom/hf/UI/SearchCityAdapter;
    invoke-static {v0}, Lcom/hf/UI/InitDefaultActivity;->access$4(Lcom/hf/UI/InitDefaultActivity;)Lcom/hf/UI/SearchCityAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/hf/UI/SearchCityAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 269
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 271
    return-void
.end method
