.class public Lcom/powermo/SmartBar/z;
.super Ljava/lang/Object;


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.powermo"

    aput-object v1, v0, v3

    const-string v1, "com.powermo.SmartBar"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "com.powermo.smartshow.activity"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.powermo.geekshow"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "endmarker"

    aput-object v2, v0, v1

    sput-object v0, Lcom/powermo/SmartBar/z;->a:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "endmarker"

    aput-object v1, v0, v3

    sput-object v0, Lcom/powermo/SmartBar/z;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/ComponentName;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/powermo/SmartBar/z;->a:[Ljava/lang/String;

    array-length v6, v5

    move v2, v1

    :goto_1
    if-lt v2, v6, :cond_2

    sget-object v3, Lcom/powermo/SmartBar/z;->b:[Ljava/lang/String;

    array-length v5, v3

    move v2, v1

    :goto_2
    if-lt v2, v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v7, v5, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget-object v6, v3, v2

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static a(Landroid/content/pm/ResolveInfo;)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/powermo/SmartBar/z;->a:[Ljava/lang/String;

    array-length v6, v5

    move v2, v1

    :goto_1
    if-lt v2, v6, :cond_2

    sget-object v3, Lcom/powermo/SmartBar/z;->b:[Ljava/lang/String;

    array-length v5, v3

    move v2, v1

    :goto_2
    if-lt v2, v5, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    aget-object v7, v5, v2

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget-object v6, v3, v2

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
