.class Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerListener;
.super Ljava/lang/Object;
.source "PowerManagerPhoneActivityNew.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabPagerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;


# direct methods
.method constructor <init>(Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerListener;->this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 212
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .parameter "position"
    .parameter "positionOffset"
    .parameter "positionOffsetPixels"

    .prologue
    .line 216
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 229
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onPageSelected ============== "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-nez p1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerListener;->this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;

    iget-object v0, v0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

    sget-object v1, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->BATTERY_INFOMATION:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-virtual {v0, v1, v3}, Lcom/zte/heartyservice/power/ActionBarAdapter;->setCurrentTab(Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;Z)V

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    if-ne p1, v3, :cond_2

    .line 235
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerListener;->this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;

    iget-object v0, v0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

    sget-object v1, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->USAGE_STATICS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-virtual {v0, v1, v3}, Lcom/zte/heartyservice/power/ActionBarAdapter;->setCurrentTab(Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;Z)V

    goto :goto_0

    .line 236
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew$TabPagerListener;->this$0:Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;

    iget-object v0, v0, Lcom/zte/heartyservice/power/PowerManagerPhoneActivityNew;->mActionBarAdapter:Lcom/zte/heartyservice/power/ActionBarAdapter;

    sget-object v1, Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;->MODE_SETTINGS:Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;

    invoke-virtual {v0, v1, v3}, Lcom/zte/heartyservice/power/ActionBarAdapter;->setCurrentTab(Lcom/zte/heartyservice/power/ActionBarAdapter$TabState;Z)V

    goto :goto_0
.end method
