.class abstract Lcom/android/stk/StkAppInstaller;
.super Ljava/lang/Object;
.source "StkAppInstaller.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static install(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 34
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;ZI)V

    .line 35
    return-void
.end method

.method private static setAppState(Landroid/content/Context;ZI)V
    .locals 6
    .parameter "context"
    .parameter "install"
    .parameter "slotId"

    .prologue
    const/4 v3, 0x1

    .line 42
    if-nez p0, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 46
    .local v2, pm:Landroid/content/pm/PackageManager;
    if-eqz v2, :cond_0

    .line 52
    if-nez p2, :cond_2

    .line 53
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.stk"

    const-string v5, "com.android.stk.StkLauncherActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .local v0, cName:Landroid/content/ComponentName;
    :goto_1
    if-eqz p1, :cond_3

    .line 64
    .local v3, state:I
    :goto_2
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v0, v3, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "StkAppInstaller"

    const-string v5, "Could not change STK app state"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    .end local v0           #cName:Landroid/content/ComponentName;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #state:I
    :cond_2
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.android.stk"

    const-string v5, "com.android.stk.StkLauncherActivity2"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cName:Landroid/content/ComponentName;
    goto :goto_1

    .line 60
    :cond_3
    const/4 v3, 0x2

    goto :goto_2
.end method

.method static unInstall(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "slotId"

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/stk/StkAppInstaller;->setAppState(Landroid/content/Context;ZI)V

    .line 39
    return-void
.end method
