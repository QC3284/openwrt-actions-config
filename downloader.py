import os
import requests
from tqdm import tqdm
import urllib3

# 禁用不安全请求的警告
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning)

def download_file(url, filename):
    try_count = 0
    while try_count < 2:
        try:
            print("尝试下载: {}".format(url))
            response = requests.get(url, stream=True, verify=False, timeout=10)
            if response.status_code == 200:
                file_size = int(response.headers.get('content-length', 0))
                downloaded = 0
                progress_bar = tqdm(total=file_size, desc=f"下载中: {filename}", unit='B', unit_scale=True, unit_divisor=1024) if file_size > 0 else None
                with open(filename, 'wb') as f:
                    for chunk in response.iter_content(chunk_size=8192):
                        if chunk:
                            f.write(chunk)
                            downloaded += len(chunk)
                            if progress_bar:
                                progress_bar.update(len(chunk))
                if progress_bar:
                    progress_bar.close()
                print("下载完成: {}".format(filename))
                return
            else:
                print("下载失败，状态码：{}，重试中...".format(response.status_code))
        except Exception as e:
            print("下载失败: {}，错误: {}，重试中...".format(url, e))
        try_count += 1
    print("下载失败: {}，已重试2次".format(url))
    if os.path.exists(filename):
        os.remove(filename)
        print("已删除不完整的文件: {}".format(filename))

def worker(url):
    filename = url.split('/')[-1]
    download_file(url, filename)

if __name__ == "__main__":
    # 读取下载链接
    with open('downloadurl.txt', 'r') as f:
        urls = f.readlines()
    if not urls:
        print("没有找到下载链接，请检查downloadurl.txt文件。")
        exit(1)

    # 按顺序下载
    for url in urls:
        worker(url.strip())

    print("所有下载任务已完成。")
