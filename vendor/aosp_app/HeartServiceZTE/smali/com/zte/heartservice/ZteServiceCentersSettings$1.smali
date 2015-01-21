.class Lcom/zte/heartservice/ZteServiceCentersSettings$1;
.super Ljava/lang/Object;
.source "ZteServiceCentersSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/heartservice/ZteServiceCentersSettings;->showCityChooseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartservice/ZteServiceCentersSettings;

.field private final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/zte/heartservice/ZteServiceCentersSettings;Landroid/app/AlertDialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/zte/heartservice/ZteServiceCentersSettings$1;->this$0:Lcom/zte/heartservice/ZteServiceCentersSettings;

    iput-object p2, p0, Lcom/zte/heartservice/ZteServiceCentersSettings$1;->val$dialog:Landroid/app/AlertDialog;

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "id"
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
    .line 204
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/zte/heartservice/ZteServiceCentersSettings$1;->this$0:Lcom/zte/heartservice/ZteServiceCentersSettings;

    #getter for: Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitysGrid:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartservice/ZteServiceCentersSettings;->access$1(Lcom/zte/heartservice/ZteServiceCentersSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge p3, v3, :cond_0

    .line 205
    iget-object v3, p0, Lcom/zte/heartservice/ZteServiceCentersSettings$1;->this$0:Lcom/zte/heartservice/ZteServiceCentersSettings;

    .line 206
    const-string v4, "zte_service_centers"

    .line 207
    const/4 v5, 0x0

    .line 205
    invoke-virtual {v3, v4, v5}, Lcom/zte/heartservice/ZteServiceCentersSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 208
    .local v2, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 209
    const-string v5, "city"

    .line 210
    iget-object v3, p0, Lcom/zte/heartservice/ZteServiceCentersSettings$1;->this$0:Lcom/zte/heartservice/ZteServiceCentersSettings;

    #getter for: Lcom/zte/heartservice/ZteServiceCentersSettings;->mCitysGrid:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/zte/heartservice/ZteServiceCentersSettings;->access$1(Lcom/zte/heartservice/ZteServiceCentersSettings;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 209
    invoke-interface {v4, v5, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 210
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 211
    iget-object v3, p0, Lcom/zte/heartservice/ZteServiceCentersSettings$1;->this$0:Lcom/zte/heartservice/ZteServiceCentersSettings;

    #calls: Lcom/zte/heartservice/ZteServiceCentersSettings;->loadData()V
    invoke-static {v3}, Lcom/zte/heartservice/ZteServiceCentersSettings;->access$2(Lcom/zte/heartservice/ZteServiceCentersSettings;)V

    .line 221
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    :goto_0
    iget-object v3, p0, Lcom/zte/heartservice/ZteServiceCentersSettings$1;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 222
    return-void

    .line 214
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/zte/heartservice/ZteServiceCentersSettings$1;->this$0:Lcom/zte/heartservice/ZteServiceCentersSettings;

    invoke-virtual {v3}, Lcom/zte/heartservice/ZteServiceCentersSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 215
    const-class v4, Lcom/zte/heartservice/RegionChooseSettings;

    .line 214
    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 216
    .local v1, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/zte/heartservice/ZteServiceCentersSettings$1;->this$0:Lcom/zte/heartservice/ZteServiceCentersSettings;

    invoke-virtual {v3, v1}, Lcom/zte/heartservice/ZteServiceCentersSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 217
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 218
    .local v0, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
