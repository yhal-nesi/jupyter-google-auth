# jupyter-google-auth

(https://oscar6echo.gitlab.io/ipyauth/)p[ipyauth] extension provides a widget to authenticate against Google. It is quite old and doesn't work with latest versions of Jupyterlab, so will need to be updated if we want to use it. The example container uses older versions of Jupyter notebook for demonstration. 

To build and run:
```
 podman build . -t ghcr.io/yhal-nesi/ipyauth-test
 podman   run -p 8888:8888 ghcr.io/yhal-nesi/ipyauth-test:latest
```

Visit jupyter notebook url, select "example-google-auth.ipynb" and run the first cell to authenticate. Run the second cell to obtain secrets.

