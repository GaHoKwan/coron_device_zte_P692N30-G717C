.class Lcom/hf/UI/LineView$1;
.super Landroid/os/AsyncTask;
.source "LineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hf/UI/LineView;->drawLine(Lcom/hf/model/CityModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/hf/UI/LineView;

.field private final synthetic val$city:Lcom/hf/model/CityModel;


# direct methods
.method constructor <init>(Lcom/hf/UI/LineView;Lcom/hf/model/CityModel;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    iput-object p2, p0, Lcom/hf/UI/LineView$1;->val$city:Lcom/hf/model/CityModel;

    .line 105
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .parameter "params"

    .prologue
    .line 110
    iget-object v3, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/UI/LineView;->access$0(Lcom/hf/UI/LineView;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 111
    .local v0, preferences:Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    .line 113
    .local v2, type:I
    :try_start_0
    iget-object v3, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/UI/LineView;->access$0(Lcom/hf/UI/LineView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f080134

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 116
    :goto_0
    iget-object v4, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    if-nez v2, :cond_1

    const/4 v3, 0x1

    :goto_1
    #setter for: Lcom/hf/UI/LineView;->isCelsius:Z
    invoke-static {v4, v3}, Lcom/hf/UI/LineView;->access$1(Lcom/hf/UI/LineView;Z)V

    .line 117
    iget-object v3, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/hf/UI/LineView;->access$0(Lcom/hf/UI/LineView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 118
    .local v1, resources:Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    const v4, 0x7f0a0068

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    #setter for: Lcom/hf/UI/LineView;->mPaddingLeftRight:I
    invoke-static {v3, v4}, Lcom/hf/UI/LineView;->access$2(Lcom/hf/UI/LineView;I)V

    .line 119
    sget-boolean v3, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v3, :cond_0

    .line 120
    const-string v3, "drawLine"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "mPaddingLeftRight = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mPaddingLeftRight:I
    invoke-static {v5}, Lcom/hf/UI/LineView;->access$3(Lcom/hf/UI/LineView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 121
    const-string v5, ";\n mDevideLineHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mDevideLineHeight:I
    invoke-static {v5}, Lcom/hf/UI/LineView;->access$4(Lcom/hf/UI/LineView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 122
    const-string v5, "; \n mPadding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mPadding:I
    invoke-static {v5}, Lcom/hf/UI/LineView;->access$5(Lcom/hf/UI/LineView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 123
    const-string v5, "; \n mTLayoutPadding = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mTLayoutPadding:I
    invoke-static {v5}, Lcom/hf/UI/LineView;->access$6(Lcom/hf/UI/LineView;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 116
    .end local v1           #resources:Landroid/content/res/Resources;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 114
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 5
    .parameter "result"

    .prologue
    .line 130
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/hf/UI/LineView;->access$0(Lcom/hf/UI/LineView;)Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/hf/UI/WeatherGroupActivity;

    invoke-virtual {v1}, Lcom/hf/UI/WeatherGroupActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    .line 131
    .local v0, windowsWidth:I
    sget-boolean v1, Lcom/hf/data/Constant;->LogTag:Z

    if-eqz v1, :cond_0

    .line 132
    const-string v1, "drawLine"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "windowWidth = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    iget-object v2, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    invoke-virtual {v2}, Lcom/hf/UI/LineView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0039

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    #setter for: Lcom/hf/UI/LineView;->mUnitWidth:I
    invoke-static {v1, v2}, Lcom/hf/UI/LineView;->access$7(Lcom/hf/UI/LineView;I)V

    .line 135
    iget-object v2, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;
    invoke-static {v1}, Lcom/hf/UI/LineView;->access$8(Lcom/hf/UI/LineView;)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    #setter for: Lcom/hf/UI/LineView;->mCount:I
    invoke-static {v2, v1}, Lcom/hf/UI/LineView;->access$9(Lcom/hf/UI/LineView;I)V

    .line 136
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    iget-object v2, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mCount:I
    invoke-static {v2}, Lcom/hf/UI/LineView;->access$10(Lcom/hf/UI/LineView;)I

    move-result v2

    iget-object v3, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mUnitWidth:I
    invoke-static {v3}, Lcom/hf/UI/LineView;->access$11(Lcom/hf/UI/LineView;)I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mPaddingLeftRight:I
    invoke-static {v3}, Lcom/hf/UI/LineView;->access$3(Lcom/hf/UI/LineView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    #setter for: Lcom/hf/UI/LineView;->mWidth:I
    invoke-static {v1, v2}, Lcom/hf/UI/LineView;->access$12(Lcom/hf/UI/LineView;I)V

    .line 137
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mWidth:I
    invoke-static {v1}, Lcom/hf/UI/LineView;->access$13(Lcom/hf/UI/LineView;)I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 138
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #setter for: Lcom/hf/UI/LineView;->mWidth:I
    invoke-static {v1, v0}, Lcom/hf/UI/LineView;->access$12(Lcom/hf/UI/LineView;I)V

    .line 139
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    iget-object v2, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mWidth:I
    invoke-static {v2}, Lcom/hf/UI/LineView;->access$13(Lcom/hf/UI/LineView;)I

    move-result v2

    iget-object v3, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mPaddingLeftRight:I
    invoke-static {v3}, Lcom/hf/UI/LineView;->access$3(Lcom/hf/UI/LineView;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mCount:I
    invoke-static {v3}, Lcom/hf/UI/LineView;->access$10(Lcom/hf/UI/LineView;)I

    move-result v3

    div-int/2addr v2, v3

    #setter for: Lcom/hf/UI/LineView;->mUnitWidth:I
    invoke-static {v1, v2}, Lcom/hf/UI/LineView;->access$7(Lcom/hf/UI/LineView;I)V

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mWidth:I
    invoke-static {v3}, Lcom/hf/UI/LineView;->access$13(Lcom/hf/UI/LineView;)I

    move-result v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/hf/UI/LineView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->val$city:Lcom/hf/model/CityModel;

    iget-object v1, v1, Lcom/hf/model/CityModel;->cityID:Ljava/lang/String;

    const-string v2, "0101"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #calls: Lcom/hf/UI/LineView;->findTMaxAndTMinForFR()V
    invoke-static {v1}, Lcom/hf/UI/LineView;->access$14(Lcom/hf/UI/LineView;)V

    .line 149
    :goto_1
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    invoke-virtual {v1}, Lcom/hf/UI/LineView;->invalidate()V

    .line 150
    return-void

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #getter for: Lcom/hf/UI/LineView;->mWeatherList:Ljava/util/List;
    invoke-static {v1}, Lcom/hf/UI/LineView;->access$8(Lcom/hf/UI/LineView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 147
    :cond_3
    iget-object v1, p0, Lcom/hf/UI/LineView$1;->this$0:Lcom/hf/UI/LineView;

    #calls: Lcom/hf/UI/LineView;->findTMaxAndTMin()V
    invoke-static {v1}, Lcom/hf/UI/LineView;->access$15(Lcom/hf/UI/LineView;)V

    goto :goto_1
.end method
