.class Lcom/mediatek/appwidget/worldclock/ChooseActivity$1;
.super Ljava/lang/Object;
.source "ChooseActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/appwidget/worldclock/ChooseActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/appwidget/worldclock/ChooseActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/appwidget/worldclock/ChooseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$1;->this$0:Lcom/mediatek/appwidget/worldclock/ChooseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .parameter
    .parameter "arg1"
    .parameter "pos"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 311
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v6, "MTKWORLDCHOOSE"

    const-string v7, "on item click .... "

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v1, 0x0

    .line 314
    .local v1, cityName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 315
    .local v5, weatherID:Ljava/lang/String;
    const v6, 0x7f090006

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 316
    .local v4, tv:Landroid/widget/TextView;
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 317
    iget-object v6, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$1;->this$0:Lcom/mediatek/appwidget/worldclock/ChooseActivity;

    #calls: Lcom/mediatek/appwidget/worldclock/ChooseActivity;->setCityInfoByWeatherID(Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    invoke-static {v6, v5}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->access$000(Lcom/mediatek/appwidget/worldclock/ChooseActivity;Ljava/lang/String;)Lcom/mediatek/appwidget/worldclock/ClockCityInfo;

    move-result-object v0

    .line 318
    .local v0, cityInfo:Lcom/mediatek/appwidget/worldclock/ClockCityInfo;
    const/4 v3, 0x0

    .line 319
    .local v3, timezone:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/mediatek/appwidget/worldclock/ClockCityInfo;->getTimeZone()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 321
    iget-object v6, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$1;->this$0:Lcom/mediatek/appwidget/worldclock/ChooseActivity;

    const v7, 0x7f070008

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 333
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$1;->this$0:Lcom/mediatek/appwidget/worldclock/ChooseActivity;

    .line 327
    .local v2, context:Landroid/content/Context;
    invoke-static {v2}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->initPreference(Landroid/content/Context;)V

    .line 328
    invoke-static {}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->access$100()I

    move-result v6

    invoke-static {v6, v0}, Lcom/mediatek/appwidget/worldclock/ClockCityUtils;->savePreferences(ILcom/mediatek/appwidget/worldclock/ClockCityInfo;)V

    .line 329
    invoke-static {}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->access$100()I

    move-result v6

    invoke-static {v2, v6, v0}, Lcom/mediatek/appwidget/worldclock/WorldClockWidgetProvider;->updateCity(Landroid/content/Context;ILcom/mediatek/appwidget/worldclock/ClockCityInfo;)V

    .line 330
    const-string v6, "MTKWORLDCHOOSE"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "position = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {p3}, Lcom/mediatek/appwidget/worldclock/ChooseActivity;->access$202(I)I

    .line 332
    iget-object v6, p0, Lcom/mediatek/appwidget/worldclock/ChooseActivity$1;->this$0:Lcom/mediatek/appwidget/worldclock/ChooseActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
