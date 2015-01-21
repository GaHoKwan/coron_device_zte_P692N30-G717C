.class Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;
.super Ljava/lang/Object;
.source "AutoCompleteTextViewActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v8, 0x1

    .line 261
    const/4 v5, 0x6

    if-ne p2, v5, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 263
    .local v0, cityName:Ljava/lang/String;
    const/4 v3, 0x0

    .line 264
    .local v3, weatherID:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mAutoComplete:Landroid/widget/AutoCompleteTextView;
    invoke-static {v5}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$000(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    iget-object v6, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    #calls: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->setCityInfo(Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    invoke-static {v6, v0}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$200(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    move-result-object v6

    #setter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    invoke-static {v5, v6}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$102(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;Lcom/mediatek/appwidget/worldclock/ClockCityInfo;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    .line 266
    const/4 v2, 0x0

    .line 267
    .local v2, timezone:Ljava/lang/String;
    iget-object v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    invoke-static {v5}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$100(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 269
    iget-object v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    const v6, 0x7f070008

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 282
    .end local v0           #cityName:Ljava/lang/String;
    .end local v2           #timezone:Ljava/lang/String;
    .end local v3           #weatherID:Ljava/lang/String;
    :cond_0
    :goto_0
    return v8

    .line 273
    .restart local v0       #cityName:Ljava/lang/String;
    .restart local v2       #timezone:Ljava/lang/String;
    .restart local v3       #weatherID:Ljava/lang/String;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 274
    .local v1, intentAutoToChoose:Landroid/content/Intent;
    const-string v5, "citynamefromauto"

    invoke-virtual {v1, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    iget-object v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    #getter for: Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->mCityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    invoke-static {v5}, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;->access$100(Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getWeatherID()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, weatherId:Ljava/lang/String;
    const-string v5, "citynamefromautoweatherid"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mm"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v5, "citynamefromautoweatherid"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    iget-object v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 280
    iget-object v5, p0, Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity$5;->this$0:Lcom/mediatek/appwidget/worldclock/AutoCompleteTextViewActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
