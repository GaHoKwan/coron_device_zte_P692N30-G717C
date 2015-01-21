.class Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$ResolveInfoComparator;
.super Ljava/lang/Object;
.source "ClearAppSettingsActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveInfoComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;


# direct methods
.method private constructor <init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 170
    iput-object p1, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$ResolveInfoComparator;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$ResolveInfoComparator;-><init>(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;)V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 173
    iget-object v2, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$ResolveInfoComparator;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    #getter for: Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->access$400(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, labelA:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$ResolveInfoComparator;->this$0:Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;

    #getter for: Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;->access$400(Lcom/zte/heartyservice/setting/ClearAppSettingsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, labelB:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 178
    const/4 v2, -0x1

    .line 183
    :goto_0
    return v2

    .line 180
    :cond_0
    if-nez v1, :cond_1

    .line 181
    const/4 v2, 0x1

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 170
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/setting/ClearAppSettingsActivity$ResolveInfoComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
